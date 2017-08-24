cmake_minimum_required(VERSION 3.8)
project(cs252)

set(CMAKE_CXX_STANDARD 11)

set(SOURCE_FILES
        lab1-src/Makefile
        lab1-src/MyMalloc.c
        lab1-src/MyMalloc.h
        lab1-src/none
        lab1-src/test0.c
        lab1-src/test0.org
        lab1-src/test1-1.c
        lab1-src/test1-1.org
        lab1-src/test1-2.c
        lab1-src/test1-2.org
        lab1-src/test1-3.c
        lab1-src/test1-3.org
        lab1-src/test1-4.c
        lab1-src/test1-4.org
        lab1-src/test1.c
        lab1-src/test1.org
        lab1-src/test10.c
        lab1-src/test10.org
        lab1-src/test2.c
        lab1-src/test2.org
        lab1-src/test3.c
        lab1-src/test3.org
        lab1-src/test4.c
        lab1-src/test4.org
        lab1-src/test5.c
        lab1-src/test5.org
        lab1-src/test6.c
        lab1-src/test6.org
        lab1-src/test7.c
        lab1-src/test7.org
        lab1-src/test8.c
        lab1-src/test8.org
        lab1-src/test9.c
        lab1-src/test9.org
        lab1-src/testall)

add_executable(cs252 ${SOURCE_FILES})