//
// CS252: MyMalloc Project
//
// The current implementation gets memory from the OS
// every time memory is requested and never frees memory.
//
// You will implement the allocator as indicated in the handout.
// 
// Also you will need to add the necessary locking mechanisms to
// support multi-threaded programs.
//

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <unistd.h>
#include <sys/mman.h>
#include <pthread.h>
#include <errno.h>
#include <stdbool.h>
#include "MyMalloc.h"

#define ALLOCATED 1
#define NOT_ALLOCATED 0
#define ARENA_SIZE 2097152

pthread_mutex_t mutex;

static bool verbose = false;

extern void atExitHandlerInC() {
    if (verbose)
        print();
}

static void *getMemoryFromOS(size_t size) {
    // Use sbrk() to get memory from OS
    _heapSize += size;

    void *mem = sbrk(size);

    if (!_initialized) {
        _memStart = mem;
    }

    return mem;
}


/*
 * @brief retrieves a new 2MB chunk of memory from the OS
 * and adds "dummy" boundary tags
 * @param size of the request
 * @return a FreeObject pointer to the beginning of the chunk
 */
static FreeObject *getNewChunk(size_t size) {
    void *mem = getMemoryFromOS(size);

    // establish fence posts
    BoundaryTag *fencePostHead = (BoundaryTag *) mem;
    setAllocated(fencePostHead, ALLOCATED);
    setSize(fencePostHead, 0);

    char *temp = (char *) mem + size - sizeof(BoundaryTag);
    BoundaryTag *fencePostFoot = (BoundaryTag *) temp;
    setAllocated(fencePostFoot, ALLOCATED);
    setSize(fencePostFoot, 0);

    return (FreeObject *) ((char *) mem + sizeof(BoundaryTag));
}

/**
 * @brief If no blocks have been allocated, get more memory and 
 * set up the free list
 */
static void initialize() {
    verbose = true;

    pthread_mutex_init(&mutex, NULL);

    // print statistics at exit
    atexit(atExitHandlerInC);

    FreeObject *firstChunk = getNewChunk(ARENA_SIZE);

    // initialize the list to point to the firstChunk
    _freeList = &_freeListSentinel;
    setSize(&firstChunk->boundary_tag, ARENA_SIZE - (2 * sizeof(BoundaryTag))); // ~2MB
    firstChunk->boundary_tag._leftObjectSize = 0;
    setAllocated(&firstChunk->boundary_tag, NOT_ALLOCATED);

    // link list pointer hookups
    firstChunk->free_list_node._next = _freeList;
    firstChunk->free_list_node._prev = _freeList;
    _freeList->free_list_node._prev = firstChunk;
    _freeList->free_list_node._next = firstChunk;

    _initialized = 1;
}

/**
 * @brief TODO: PART 1
 * This function should perform allocation to the program appropriately,
 * giving pieces of memory that large enough to satisfy the request. 
 * Currently, it just sbrk's memory every time.
 *
 * @param size size of the request
 *
 * @return pointer to the first usable byte in memory for the requesting
 * program
 */
static void *allocateObject(size_t size) {

    // Make sure that allocator is initialized
    if (!_initialized)
        initialize();
    if (size == 0 || size >= ARENA_SIZE) {
        errno = ENOMEM;
        return NULL;
    }
    //Round up the requested size to the next 8 byte boundary.
    size_t roundedSize = (size + sizeof(BoundaryTag) + 7) & ~7;
    //The minimum size of an allocation is sizeof(FreeObject) as when the memory is freed it will take that much
    // space to maintain its place in the free list. If a smaller size of bytes is allocated then there will be
    // potential for corrupting the next block’s boundary tag
    if (roundedSize < sizeof(struct FreeObject))
        roundedSize = sizeof(struct FreeObject);
    FreeObject *ptr = _freeList->free_list_node._next;
    //Traverse the free list from the beginning, and find the first block large enough to satisfy the request
    // (first fit).
    while (ptr != _freeList) {
        size_t reminder = ptr->boundary_tag._objectSizeAndAlloc - roundedSize;
        //fprintf(stderr, "%zu\n", reminder);
        //If the block is large enough to be split (that is, the remainder is at least the size of the headers),
        // split the block in two.
        if ((ptr->boundary_tag._objectSizeAndAlloc >= roundedSize) &&
            (reminder >= (sizeof(FreeObject) + 8))) {
            char *_mem = (char *) ptr + ptr->boundary_tag._objectSizeAndAlloc - roundedSize;
            FreeObject *f = (FreeObject *) _mem;
            //Set the _allocated bit in the header
            setSize(&f->boundary_tag, roundedSize);
            setAllocated(&f->boundary_tag, ALLOCATED);
            setSize(&ptr->boundary_tag, ptr->boundary_tag._objectSizeAndAlloc - roundedSize);
            // and update the proceeding block’s _leftObjectSize to the size of the allocated block.
            f->boundary_tag._leftObjectSize = ptr->boundary_tag._objectSizeAndAlloc;
            //The chosen block should be removed from the free list and returned to satisfy the request
            //TODO
            pthread_mutex_unlock(&mutex);
            return (void *) ((char *) f + sizeof(FreeObject));
        }
        // If the block is not large enough to be split, simply remove that block from the list and return it.
        else if (ptr->boundary_tag._objectSizeAndAlloc >= roundedSize && reminder < (sizeof(FreeObject) + 8)) {
            ptr->free_list_node._prev->free_list_node._next = ptr->free_list_node._next;
            ptr->free_list_node._next->free_list_node._prev = ptr->free_list_node._prev;
            setAllocated(&ptr->boundary_tag, ALLOCATED);
            pthread_mutex_unlock(&mutex);
            return (void *) ((char *) ptr + sizeof(FreeObject));
        }
        ptr = ptr->free_list_node._next;
        // If the list does not have enough memory, request a new 2MB block, insert the block into the free list,
        // and repeat step 3.

        if (ptr == _freeList) {
            // get 2MB from os
            FreeObject *newChunk = getNewChunk(ARENA_SIZE);
            //set size and alloc
            setSize(&newChunk->boundary_tag, ARENA_SIZE - (2 * sizeof(BoundaryTag))); // ~2MB
            newChunk->boundary_tag._leftObjectSize = 0;
            setAllocated(&newChunk->boundary_tag, NOT_ALLOCATED);
            // insert the block into the free list
            newChunk->free_list_node._next = _freeList->free_list_node._next;
            newChunk->free_list_node._prev = _freeList;
            _freeList->free_list_node._next->free_list_node._prev = newChunk;
            _freeList->free_list_node._next = newChunk;
            FreeObject *right = (FreeObject *) ((char *)newChunk + newChunk->boundary_tag._objectSizeAndAlloc);
            right->boundary_tag._leftObjectSize = newChunk->boundary_tag._objectSizeAndAlloc;
            //return  allocateObject(size);

        }


    }
    //pthread_mutex_unlock(&mutex);
    return getMemoryFromOS(size);
}


/**
 * @brief TODO: PART 2
 * This funtion takes a pointer to memory returned by the program, and
 * appropriately reinserts it back into the free list.
 * You will have to manage all coalescing as needed
 *
 * @param ptr
 */
static void freeObject(void *ptr) {
    // Check the if the header of one or both of the neighboring blocks are free. If they are free then coalesce
    // the block being freed into the unallocated blocks.
    /*FreeObject *pointer = (FreeObject *) ((char *)ptr - sizeof(FreeObject));
    FreeObject *left = (FreeObject *) ((char *)pointer - pointer->boundary_tag._leftObjectSize);
    FreeObject *right = (FreeObject *) ((char *)pointer + pointer->boundary_tag._objectSizeAndAlloc);*/
    FreeObject *initptr = (FreeObject *) ((char *) ptr - sizeof(FreeObject));
    FreeObject *left = (FreeObject *) ((char *) initptr - initptr->boundary_tag._leftObjectSize);
    FreeObject *right = (FreeObject *) ((char *) initptr + initptr->boundary_tag._objectSizeAndAlloc);
    FreeObject *rright = (FreeObject *) ((char *) right + right->boundary_tag._objectSizeAndAlloc);
    int left_free = 0;
    int right_free = 0;
    if (!isAllocated(&left->boundary_tag) /*&& (getSize(&left->boundary_tag) != 0)*/) left_free = 1;
    if (!isAllocated(&right->boundary_tag) /*&& (getSize(&right->boundary_tag) != 0)*/) right_free = 1;
    fprintf(stderr, "left= %d, right = %d\n", left_free, right_free);
    if (left_free==0 && right_free==0) {
        setAllocated(&initptr->boundary_tag, NOT_ALLOCATED);
        setSize(&left->boundary_tag, left->boundary_tag._objectSizeAndAlloc
                                     + initptr->boundary_tag._objectSizeAndAlloc
                                       + right->boundary_tag._objectSizeAndAlloc);
        rright->boundary_tag._leftObjectSize = left->boundary_tag._objectSizeAndAlloc;
        right->free_list_node._prev->free_list_node._next = right->free_list_node._next;
        right->free_list_node._next->free_list_node._next = right->free_list_node._prev;
    } else if (left_free==0) {
        setSize(&left->boundary_tag, left->boundary_tag._objectSizeAndAlloc
                                     + initptr->boundary_tag._objectSizeAndAlloc);
        setAllocated(&initptr->boundary_tag,NOT_ALLOCATED);
        right->boundary_tag._leftObjectSize = left->boundary_tag._objectSizeAndAlloc;
    } else if (right_free==0) {
        setAllocated(&initptr->boundary_tag, NOT_ALLOCATED);
        setSize(&initptr->boundary_tag, initptr->boundary_tag._objectSizeAndAlloc
                                        + right->boundary_tag._objectSizeAndAlloc);
        rright->boundary_tag._leftObjectSize = initptr->boundary_tag._objectSizeAndAlloc;
        right->free_list_node._prev->free_list_node._next = initptr;
        initptr->free_list_node._prev = right->free_list_node._prev;
        initptr->free_list_node._next = right->free_list_node._next;
        right->free_list_node._next->free_list_node._prev = initptr;
    } else {
        setAllocated(&initptr->boundary_tag, NOT_ALLOCATED);
        initptr->free_list_node._next = _freeList->free_list_node._next;
        initptr->free_list_node._prev = _freeList;
        _freeList->free_list_node._next->free_list_node._prev = initptr;
        _freeList->free_list_node._next = initptr;
    }




    // If neither the left nor right neighbors are free, simply mark the block as free and insert it at the head
    // of the free list.
    //pthread_mutex_unlock(&mutex);


}

void print() {
    printf("\n-------------------\n");

    printf("HeapSize:\t%zd bytes\n", _heapSize);
    printf("# mallocs:\t%d\n", _mallocCalls);
    printf("# reallocs:\t%d\n", _reallocCalls);
    printf("# callocs:\t%d\n", _callocCalls);
    printf("# frees:\t%d\n", _freeCalls);

    printf("\n-------------------\n");
}

void print_list() {
    printf("FreeList: ");
    if (!_initialized)
        initialize();
    FreeObject *ptr = _freeList->free_list_node._next;
    while (ptr != _freeList) {
        long offset = (long) ptr - (long) _memStart;
        printf("[offset:%ld,size:%zd]", offset, getSize(&ptr->boundary_tag));
        ptr = ptr->free_list_node._next;
        if (ptr != NULL)
            printf("->");
    }
    printf("\n");
}

void increaseMallocCalls() { _mallocCalls++; }

void increaseReallocCalls() { _reallocCalls++; }

void increaseCallocCalls() { _callocCalls++; }

void increaseFreeCalls() { _freeCalls++; }

//
// C interface
//

extern void *malloc(size_t size) {
    pthread_mutex_lock(&mutex);
    increaseMallocCalls();

    return allocateObject(size);
}

extern void free(void *ptr) {
    pthread_mutex_lock(&mutex);
    increaseFreeCalls();

    if (ptr == 0) {
        // No object to free
        pthread_mutex_unlock(&mutex);
        return;
    }

    freeObject(ptr);
}

extern void *realloc(void *ptr, size_t size) {
    pthread_mutex_lock(&mutex);
    increaseReallocCalls();

    // Allocate new object
    void *newptr = allocateObject(size);

    // Copy old object only if ptr != 0
    if (ptr != 0) {

        // copy only the minimum number of bytes
        FreeObject *o = (FreeObject *) ((char *) ptr - sizeof(BoundaryTag));
        size_t sizeToCopy = getSize(&o->boundary_tag);
        if (sizeToCopy > size) {
            sizeToCopy = size;
        }

        memcpy(newptr, ptr, sizeToCopy);

        //Free old object
        freeObject(ptr);
    }

    return newptr;
}

extern void *calloc(size_t nelem, size_t elsize) {
    pthread_mutex_lock(&mutex);
    increaseCallocCalls();

    // calloc allocates and initializes
    size_t size = nelem * elsize;

    void *ptr = allocateObject(size);

    if (ptr) {
        // No error
        // Initialize chunk with 0s
        memset(ptr, 0, size);
    }

    return ptr;
}

