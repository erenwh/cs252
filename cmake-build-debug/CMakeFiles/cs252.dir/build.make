# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.8

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /home/hanwang/Downloads/clion-2017.2.1/bin/cmake/bin/cmake

# The command to remove a file.
RM = /home/hanwang/Downloads/clion-2017.2.1/bin/cmake/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/hanwang/cs252

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/hanwang/cs252/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/cs252.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/cs252.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/cs252.dir/flags.make

CMakeFiles/cs252.dir/lab1-src/MyMalloc.c.o: CMakeFiles/cs252.dir/flags.make
CMakeFiles/cs252.dir/lab1-src/MyMalloc.c.o: ../lab1-src/MyMalloc.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/hanwang/cs252/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/cs252.dir/lab1-src/MyMalloc.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/cs252.dir/lab1-src/MyMalloc.c.o   -c /home/hanwang/cs252/lab1-src/MyMalloc.c

CMakeFiles/cs252.dir/lab1-src/MyMalloc.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/cs252.dir/lab1-src/MyMalloc.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/hanwang/cs252/lab1-src/MyMalloc.c > CMakeFiles/cs252.dir/lab1-src/MyMalloc.c.i

CMakeFiles/cs252.dir/lab1-src/MyMalloc.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/cs252.dir/lab1-src/MyMalloc.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/hanwang/cs252/lab1-src/MyMalloc.c -o CMakeFiles/cs252.dir/lab1-src/MyMalloc.c.s

CMakeFiles/cs252.dir/lab1-src/MyMalloc.c.o.requires:

.PHONY : CMakeFiles/cs252.dir/lab1-src/MyMalloc.c.o.requires

CMakeFiles/cs252.dir/lab1-src/MyMalloc.c.o.provides: CMakeFiles/cs252.dir/lab1-src/MyMalloc.c.o.requires
	$(MAKE) -f CMakeFiles/cs252.dir/build.make CMakeFiles/cs252.dir/lab1-src/MyMalloc.c.o.provides.build
.PHONY : CMakeFiles/cs252.dir/lab1-src/MyMalloc.c.o.provides

CMakeFiles/cs252.dir/lab1-src/MyMalloc.c.o.provides.build: CMakeFiles/cs252.dir/lab1-src/MyMalloc.c.o


CMakeFiles/cs252.dir/lab1-src/test0.c.o: CMakeFiles/cs252.dir/flags.make
CMakeFiles/cs252.dir/lab1-src/test0.c.o: ../lab1-src/test0.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/hanwang/cs252/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object CMakeFiles/cs252.dir/lab1-src/test0.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/cs252.dir/lab1-src/test0.c.o   -c /home/hanwang/cs252/lab1-src/test0.c

CMakeFiles/cs252.dir/lab1-src/test0.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/cs252.dir/lab1-src/test0.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/hanwang/cs252/lab1-src/test0.c > CMakeFiles/cs252.dir/lab1-src/test0.c.i

CMakeFiles/cs252.dir/lab1-src/test0.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/cs252.dir/lab1-src/test0.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/hanwang/cs252/lab1-src/test0.c -o CMakeFiles/cs252.dir/lab1-src/test0.c.s

CMakeFiles/cs252.dir/lab1-src/test0.c.o.requires:

.PHONY : CMakeFiles/cs252.dir/lab1-src/test0.c.o.requires

CMakeFiles/cs252.dir/lab1-src/test0.c.o.provides: CMakeFiles/cs252.dir/lab1-src/test0.c.o.requires
	$(MAKE) -f CMakeFiles/cs252.dir/build.make CMakeFiles/cs252.dir/lab1-src/test0.c.o.provides.build
.PHONY : CMakeFiles/cs252.dir/lab1-src/test0.c.o.provides

CMakeFiles/cs252.dir/lab1-src/test0.c.o.provides.build: CMakeFiles/cs252.dir/lab1-src/test0.c.o


CMakeFiles/cs252.dir/lab1-src/test1-1.c.o: CMakeFiles/cs252.dir/flags.make
CMakeFiles/cs252.dir/lab1-src/test1-1.c.o: ../lab1-src/test1-1.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/hanwang/cs252/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object CMakeFiles/cs252.dir/lab1-src/test1-1.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/cs252.dir/lab1-src/test1-1.c.o   -c /home/hanwang/cs252/lab1-src/test1-1.c

CMakeFiles/cs252.dir/lab1-src/test1-1.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/cs252.dir/lab1-src/test1-1.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/hanwang/cs252/lab1-src/test1-1.c > CMakeFiles/cs252.dir/lab1-src/test1-1.c.i

CMakeFiles/cs252.dir/lab1-src/test1-1.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/cs252.dir/lab1-src/test1-1.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/hanwang/cs252/lab1-src/test1-1.c -o CMakeFiles/cs252.dir/lab1-src/test1-1.c.s

CMakeFiles/cs252.dir/lab1-src/test1-1.c.o.requires:

.PHONY : CMakeFiles/cs252.dir/lab1-src/test1-1.c.o.requires

CMakeFiles/cs252.dir/lab1-src/test1-1.c.o.provides: CMakeFiles/cs252.dir/lab1-src/test1-1.c.o.requires
	$(MAKE) -f CMakeFiles/cs252.dir/build.make CMakeFiles/cs252.dir/lab1-src/test1-1.c.o.provides.build
.PHONY : CMakeFiles/cs252.dir/lab1-src/test1-1.c.o.provides

CMakeFiles/cs252.dir/lab1-src/test1-1.c.o.provides.build: CMakeFiles/cs252.dir/lab1-src/test1-1.c.o


CMakeFiles/cs252.dir/lab1-src/test1-2.c.o: CMakeFiles/cs252.dir/flags.make
CMakeFiles/cs252.dir/lab1-src/test1-2.c.o: ../lab1-src/test1-2.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/hanwang/cs252/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building C object CMakeFiles/cs252.dir/lab1-src/test1-2.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/cs252.dir/lab1-src/test1-2.c.o   -c /home/hanwang/cs252/lab1-src/test1-2.c

CMakeFiles/cs252.dir/lab1-src/test1-2.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/cs252.dir/lab1-src/test1-2.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/hanwang/cs252/lab1-src/test1-2.c > CMakeFiles/cs252.dir/lab1-src/test1-2.c.i

CMakeFiles/cs252.dir/lab1-src/test1-2.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/cs252.dir/lab1-src/test1-2.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/hanwang/cs252/lab1-src/test1-2.c -o CMakeFiles/cs252.dir/lab1-src/test1-2.c.s

CMakeFiles/cs252.dir/lab1-src/test1-2.c.o.requires:

.PHONY : CMakeFiles/cs252.dir/lab1-src/test1-2.c.o.requires

CMakeFiles/cs252.dir/lab1-src/test1-2.c.o.provides: CMakeFiles/cs252.dir/lab1-src/test1-2.c.o.requires
	$(MAKE) -f CMakeFiles/cs252.dir/build.make CMakeFiles/cs252.dir/lab1-src/test1-2.c.o.provides.build
.PHONY : CMakeFiles/cs252.dir/lab1-src/test1-2.c.o.provides

CMakeFiles/cs252.dir/lab1-src/test1-2.c.o.provides.build: CMakeFiles/cs252.dir/lab1-src/test1-2.c.o


CMakeFiles/cs252.dir/lab1-src/test1-3.c.o: CMakeFiles/cs252.dir/flags.make
CMakeFiles/cs252.dir/lab1-src/test1-3.c.o: ../lab1-src/test1-3.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/hanwang/cs252/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building C object CMakeFiles/cs252.dir/lab1-src/test1-3.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/cs252.dir/lab1-src/test1-3.c.o   -c /home/hanwang/cs252/lab1-src/test1-3.c

CMakeFiles/cs252.dir/lab1-src/test1-3.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/cs252.dir/lab1-src/test1-3.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/hanwang/cs252/lab1-src/test1-3.c > CMakeFiles/cs252.dir/lab1-src/test1-3.c.i

CMakeFiles/cs252.dir/lab1-src/test1-3.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/cs252.dir/lab1-src/test1-3.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/hanwang/cs252/lab1-src/test1-3.c -o CMakeFiles/cs252.dir/lab1-src/test1-3.c.s

CMakeFiles/cs252.dir/lab1-src/test1-3.c.o.requires:

.PHONY : CMakeFiles/cs252.dir/lab1-src/test1-3.c.o.requires

CMakeFiles/cs252.dir/lab1-src/test1-3.c.o.provides: CMakeFiles/cs252.dir/lab1-src/test1-3.c.o.requires
	$(MAKE) -f CMakeFiles/cs252.dir/build.make CMakeFiles/cs252.dir/lab1-src/test1-3.c.o.provides.build
.PHONY : CMakeFiles/cs252.dir/lab1-src/test1-3.c.o.provides

CMakeFiles/cs252.dir/lab1-src/test1-3.c.o.provides.build: CMakeFiles/cs252.dir/lab1-src/test1-3.c.o


CMakeFiles/cs252.dir/lab1-src/test1-4.c.o: CMakeFiles/cs252.dir/flags.make
CMakeFiles/cs252.dir/lab1-src/test1-4.c.o: ../lab1-src/test1-4.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/hanwang/cs252/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building C object CMakeFiles/cs252.dir/lab1-src/test1-4.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/cs252.dir/lab1-src/test1-4.c.o   -c /home/hanwang/cs252/lab1-src/test1-4.c

CMakeFiles/cs252.dir/lab1-src/test1-4.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/cs252.dir/lab1-src/test1-4.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/hanwang/cs252/lab1-src/test1-4.c > CMakeFiles/cs252.dir/lab1-src/test1-4.c.i

CMakeFiles/cs252.dir/lab1-src/test1-4.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/cs252.dir/lab1-src/test1-4.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/hanwang/cs252/lab1-src/test1-4.c -o CMakeFiles/cs252.dir/lab1-src/test1-4.c.s

CMakeFiles/cs252.dir/lab1-src/test1-4.c.o.requires:

.PHONY : CMakeFiles/cs252.dir/lab1-src/test1-4.c.o.requires

CMakeFiles/cs252.dir/lab1-src/test1-4.c.o.provides: CMakeFiles/cs252.dir/lab1-src/test1-4.c.o.requires
	$(MAKE) -f CMakeFiles/cs252.dir/build.make CMakeFiles/cs252.dir/lab1-src/test1-4.c.o.provides.build
.PHONY : CMakeFiles/cs252.dir/lab1-src/test1-4.c.o.provides

CMakeFiles/cs252.dir/lab1-src/test1-4.c.o.provides.build: CMakeFiles/cs252.dir/lab1-src/test1-4.c.o


CMakeFiles/cs252.dir/lab1-src/test1.c.o: CMakeFiles/cs252.dir/flags.make
CMakeFiles/cs252.dir/lab1-src/test1.c.o: ../lab1-src/test1.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/hanwang/cs252/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building C object CMakeFiles/cs252.dir/lab1-src/test1.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/cs252.dir/lab1-src/test1.c.o   -c /home/hanwang/cs252/lab1-src/test1.c

CMakeFiles/cs252.dir/lab1-src/test1.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/cs252.dir/lab1-src/test1.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/hanwang/cs252/lab1-src/test1.c > CMakeFiles/cs252.dir/lab1-src/test1.c.i

CMakeFiles/cs252.dir/lab1-src/test1.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/cs252.dir/lab1-src/test1.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/hanwang/cs252/lab1-src/test1.c -o CMakeFiles/cs252.dir/lab1-src/test1.c.s

CMakeFiles/cs252.dir/lab1-src/test1.c.o.requires:

.PHONY : CMakeFiles/cs252.dir/lab1-src/test1.c.o.requires

CMakeFiles/cs252.dir/lab1-src/test1.c.o.provides: CMakeFiles/cs252.dir/lab1-src/test1.c.o.requires
	$(MAKE) -f CMakeFiles/cs252.dir/build.make CMakeFiles/cs252.dir/lab1-src/test1.c.o.provides.build
.PHONY : CMakeFiles/cs252.dir/lab1-src/test1.c.o.provides

CMakeFiles/cs252.dir/lab1-src/test1.c.o.provides.build: CMakeFiles/cs252.dir/lab1-src/test1.c.o


CMakeFiles/cs252.dir/lab1-src/test10.c.o: CMakeFiles/cs252.dir/flags.make
CMakeFiles/cs252.dir/lab1-src/test10.c.o: ../lab1-src/test10.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/hanwang/cs252/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building C object CMakeFiles/cs252.dir/lab1-src/test10.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/cs252.dir/lab1-src/test10.c.o   -c /home/hanwang/cs252/lab1-src/test10.c

CMakeFiles/cs252.dir/lab1-src/test10.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/cs252.dir/lab1-src/test10.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/hanwang/cs252/lab1-src/test10.c > CMakeFiles/cs252.dir/lab1-src/test10.c.i

CMakeFiles/cs252.dir/lab1-src/test10.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/cs252.dir/lab1-src/test10.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/hanwang/cs252/lab1-src/test10.c -o CMakeFiles/cs252.dir/lab1-src/test10.c.s

CMakeFiles/cs252.dir/lab1-src/test10.c.o.requires:

.PHONY : CMakeFiles/cs252.dir/lab1-src/test10.c.o.requires

CMakeFiles/cs252.dir/lab1-src/test10.c.o.provides: CMakeFiles/cs252.dir/lab1-src/test10.c.o.requires
	$(MAKE) -f CMakeFiles/cs252.dir/build.make CMakeFiles/cs252.dir/lab1-src/test10.c.o.provides.build
.PHONY : CMakeFiles/cs252.dir/lab1-src/test10.c.o.provides

CMakeFiles/cs252.dir/lab1-src/test10.c.o.provides.build: CMakeFiles/cs252.dir/lab1-src/test10.c.o


CMakeFiles/cs252.dir/lab1-src/test2.c.o: CMakeFiles/cs252.dir/flags.make
CMakeFiles/cs252.dir/lab1-src/test2.c.o: ../lab1-src/test2.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/hanwang/cs252/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building C object CMakeFiles/cs252.dir/lab1-src/test2.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/cs252.dir/lab1-src/test2.c.o   -c /home/hanwang/cs252/lab1-src/test2.c

CMakeFiles/cs252.dir/lab1-src/test2.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/cs252.dir/lab1-src/test2.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/hanwang/cs252/lab1-src/test2.c > CMakeFiles/cs252.dir/lab1-src/test2.c.i

CMakeFiles/cs252.dir/lab1-src/test2.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/cs252.dir/lab1-src/test2.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/hanwang/cs252/lab1-src/test2.c -o CMakeFiles/cs252.dir/lab1-src/test2.c.s

CMakeFiles/cs252.dir/lab1-src/test2.c.o.requires:

.PHONY : CMakeFiles/cs252.dir/lab1-src/test2.c.o.requires

CMakeFiles/cs252.dir/lab1-src/test2.c.o.provides: CMakeFiles/cs252.dir/lab1-src/test2.c.o.requires
	$(MAKE) -f CMakeFiles/cs252.dir/build.make CMakeFiles/cs252.dir/lab1-src/test2.c.o.provides.build
.PHONY : CMakeFiles/cs252.dir/lab1-src/test2.c.o.provides

CMakeFiles/cs252.dir/lab1-src/test2.c.o.provides.build: CMakeFiles/cs252.dir/lab1-src/test2.c.o


CMakeFiles/cs252.dir/lab1-src/test3.c.o: CMakeFiles/cs252.dir/flags.make
CMakeFiles/cs252.dir/lab1-src/test3.c.o: ../lab1-src/test3.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/hanwang/cs252/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Building C object CMakeFiles/cs252.dir/lab1-src/test3.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/cs252.dir/lab1-src/test3.c.o   -c /home/hanwang/cs252/lab1-src/test3.c

CMakeFiles/cs252.dir/lab1-src/test3.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/cs252.dir/lab1-src/test3.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/hanwang/cs252/lab1-src/test3.c > CMakeFiles/cs252.dir/lab1-src/test3.c.i

CMakeFiles/cs252.dir/lab1-src/test3.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/cs252.dir/lab1-src/test3.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/hanwang/cs252/lab1-src/test3.c -o CMakeFiles/cs252.dir/lab1-src/test3.c.s

CMakeFiles/cs252.dir/lab1-src/test3.c.o.requires:

.PHONY : CMakeFiles/cs252.dir/lab1-src/test3.c.o.requires

CMakeFiles/cs252.dir/lab1-src/test3.c.o.provides: CMakeFiles/cs252.dir/lab1-src/test3.c.o.requires
	$(MAKE) -f CMakeFiles/cs252.dir/build.make CMakeFiles/cs252.dir/lab1-src/test3.c.o.provides.build
.PHONY : CMakeFiles/cs252.dir/lab1-src/test3.c.o.provides

CMakeFiles/cs252.dir/lab1-src/test3.c.o.provides.build: CMakeFiles/cs252.dir/lab1-src/test3.c.o


CMakeFiles/cs252.dir/lab1-src/test4.c.o: CMakeFiles/cs252.dir/flags.make
CMakeFiles/cs252.dir/lab1-src/test4.c.o: ../lab1-src/test4.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/hanwang/cs252/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "Building C object CMakeFiles/cs252.dir/lab1-src/test4.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/cs252.dir/lab1-src/test4.c.o   -c /home/hanwang/cs252/lab1-src/test4.c

CMakeFiles/cs252.dir/lab1-src/test4.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/cs252.dir/lab1-src/test4.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/hanwang/cs252/lab1-src/test4.c > CMakeFiles/cs252.dir/lab1-src/test4.c.i

CMakeFiles/cs252.dir/lab1-src/test4.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/cs252.dir/lab1-src/test4.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/hanwang/cs252/lab1-src/test4.c -o CMakeFiles/cs252.dir/lab1-src/test4.c.s

CMakeFiles/cs252.dir/lab1-src/test4.c.o.requires:

.PHONY : CMakeFiles/cs252.dir/lab1-src/test4.c.o.requires

CMakeFiles/cs252.dir/lab1-src/test4.c.o.provides: CMakeFiles/cs252.dir/lab1-src/test4.c.o.requires
	$(MAKE) -f CMakeFiles/cs252.dir/build.make CMakeFiles/cs252.dir/lab1-src/test4.c.o.provides.build
.PHONY : CMakeFiles/cs252.dir/lab1-src/test4.c.o.provides

CMakeFiles/cs252.dir/lab1-src/test4.c.o.provides.build: CMakeFiles/cs252.dir/lab1-src/test4.c.o


CMakeFiles/cs252.dir/lab1-src/test5.c.o: CMakeFiles/cs252.dir/flags.make
CMakeFiles/cs252.dir/lab1-src/test5.c.o: ../lab1-src/test5.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/hanwang/cs252/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_12) "Building C object CMakeFiles/cs252.dir/lab1-src/test5.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/cs252.dir/lab1-src/test5.c.o   -c /home/hanwang/cs252/lab1-src/test5.c

CMakeFiles/cs252.dir/lab1-src/test5.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/cs252.dir/lab1-src/test5.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/hanwang/cs252/lab1-src/test5.c > CMakeFiles/cs252.dir/lab1-src/test5.c.i

CMakeFiles/cs252.dir/lab1-src/test5.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/cs252.dir/lab1-src/test5.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/hanwang/cs252/lab1-src/test5.c -o CMakeFiles/cs252.dir/lab1-src/test5.c.s

CMakeFiles/cs252.dir/lab1-src/test5.c.o.requires:

.PHONY : CMakeFiles/cs252.dir/lab1-src/test5.c.o.requires

CMakeFiles/cs252.dir/lab1-src/test5.c.o.provides: CMakeFiles/cs252.dir/lab1-src/test5.c.o.requires
	$(MAKE) -f CMakeFiles/cs252.dir/build.make CMakeFiles/cs252.dir/lab1-src/test5.c.o.provides.build
.PHONY : CMakeFiles/cs252.dir/lab1-src/test5.c.o.provides

CMakeFiles/cs252.dir/lab1-src/test5.c.o.provides.build: CMakeFiles/cs252.dir/lab1-src/test5.c.o


CMakeFiles/cs252.dir/lab1-src/test6.c.o: CMakeFiles/cs252.dir/flags.make
CMakeFiles/cs252.dir/lab1-src/test6.c.o: ../lab1-src/test6.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/hanwang/cs252/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_13) "Building C object CMakeFiles/cs252.dir/lab1-src/test6.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/cs252.dir/lab1-src/test6.c.o   -c /home/hanwang/cs252/lab1-src/test6.c

CMakeFiles/cs252.dir/lab1-src/test6.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/cs252.dir/lab1-src/test6.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/hanwang/cs252/lab1-src/test6.c > CMakeFiles/cs252.dir/lab1-src/test6.c.i

CMakeFiles/cs252.dir/lab1-src/test6.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/cs252.dir/lab1-src/test6.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/hanwang/cs252/lab1-src/test6.c -o CMakeFiles/cs252.dir/lab1-src/test6.c.s

CMakeFiles/cs252.dir/lab1-src/test6.c.o.requires:

.PHONY : CMakeFiles/cs252.dir/lab1-src/test6.c.o.requires

CMakeFiles/cs252.dir/lab1-src/test6.c.o.provides: CMakeFiles/cs252.dir/lab1-src/test6.c.o.requires
	$(MAKE) -f CMakeFiles/cs252.dir/build.make CMakeFiles/cs252.dir/lab1-src/test6.c.o.provides.build
.PHONY : CMakeFiles/cs252.dir/lab1-src/test6.c.o.provides

CMakeFiles/cs252.dir/lab1-src/test6.c.o.provides.build: CMakeFiles/cs252.dir/lab1-src/test6.c.o


CMakeFiles/cs252.dir/lab1-src/test7.c.o: CMakeFiles/cs252.dir/flags.make
CMakeFiles/cs252.dir/lab1-src/test7.c.o: ../lab1-src/test7.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/hanwang/cs252/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_14) "Building C object CMakeFiles/cs252.dir/lab1-src/test7.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/cs252.dir/lab1-src/test7.c.o   -c /home/hanwang/cs252/lab1-src/test7.c

CMakeFiles/cs252.dir/lab1-src/test7.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/cs252.dir/lab1-src/test7.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/hanwang/cs252/lab1-src/test7.c > CMakeFiles/cs252.dir/lab1-src/test7.c.i

CMakeFiles/cs252.dir/lab1-src/test7.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/cs252.dir/lab1-src/test7.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/hanwang/cs252/lab1-src/test7.c -o CMakeFiles/cs252.dir/lab1-src/test7.c.s

CMakeFiles/cs252.dir/lab1-src/test7.c.o.requires:

.PHONY : CMakeFiles/cs252.dir/lab1-src/test7.c.o.requires

CMakeFiles/cs252.dir/lab1-src/test7.c.o.provides: CMakeFiles/cs252.dir/lab1-src/test7.c.o.requires
	$(MAKE) -f CMakeFiles/cs252.dir/build.make CMakeFiles/cs252.dir/lab1-src/test7.c.o.provides.build
.PHONY : CMakeFiles/cs252.dir/lab1-src/test7.c.o.provides

CMakeFiles/cs252.dir/lab1-src/test7.c.o.provides.build: CMakeFiles/cs252.dir/lab1-src/test7.c.o


CMakeFiles/cs252.dir/lab1-src/test8.c.o: CMakeFiles/cs252.dir/flags.make
CMakeFiles/cs252.dir/lab1-src/test8.c.o: ../lab1-src/test8.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/hanwang/cs252/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_15) "Building C object CMakeFiles/cs252.dir/lab1-src/test8.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/cs252.dir/lab1-src/test8.c.o   -c /home/hanwang/cs252/lab1-src/test8.c

CMakeFiles/cs252.dir/lab1-src/test8.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/cs252.dir/lab1-src/test8.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/hanwang/cs252/lab1-src/test8.c > CMakeFiles/cs252.dir/lab1-src/test8.c.i

CMakeFiles/cs252.dir/lab1-src/test8.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/cs252.dir/lab1-src/test8.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/hanwang/cs252/lab1-src/test8.c -o CMakeFiles/cs252.dir/lab1-src/test8.c.s

CMakeFiles/cs252.dir/lab1-src/test8.c.o.requires:

.PHONY : CMakeFiles/cs252.dir/lab1-src/test8.c.o.requires

CMakeFiles/cs252.dir/lab1-src/test8.c.o.provides: CMakeFiles/cs252.dir/lab1-src/test8.c.o.requires
	$(MAKE) -f CMakeFiles/cs252.dir/build.make CMakeFiles/cs252.dir/lab1-src/test8.c.o.provides.build
.PHONY : CMakeFiles/cs252.dir/lab1-src/test8.c.o.provides

CMakeFiles/cs252.dir/lab1-src/test8.c.o.provides.build: CMakeFiles/cs252.dir/lab1-src/test8.c.o


CMakeFiles/cs252.dir/lab1-src/test9.c.o: CMakeFiles/cs252.dir/flags.make
CMakeFiles/cs252.dir/lab1-src/test9.c.o: ../lab1-src/test9.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/hanwang/cs252/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_16) "Building C object CMakeFiles/cs252.dir/lab1-src/test9.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/cs252.dir/lab1-src/test9.c.o   -c /home/hanwang/cs252/lab1-src/test9.c

CMakeFiles/cs252.dir/lab1-src/test9.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/cs252.dir/lab1-src/test9.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/hanwang/cs252/lab1-src/test9.c > CMakeFiles/cs252.dir/lab1-src/test9.c.i

CMakeFiles/cs252.dir/lab1-src/test9.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/cs252.dir/lab1-src/test9.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/hanwang/cs252/lab1-src/test9.c -o CMakeFiles/cs252.dir/lab1-src/test9.c.s

CMakeFiles/cs252.dir/lab1-src/test9.c.o.requires:

.PHONY : CMakeFiles/cs252.dir/lab1-src/test9.c.o.requires

CMakeFiles/cs252.dir/lab1-src/test9.c.o.provides: CMakeFiles/cs252.dir/lab1-src/test9.c.o.requires
	$(MAKE) -f CMakeFiles/cs252.dir/build.make CMakeFiles/cs252.dir/lab1-src/test9.c.o.provides.build
.PHONY : CMakeFiles/cs252.dir/lab1-src/test9.c.o.provides

CMakeFiles/cs252.dir/lab1-src/test9.c.o.provides.build: CMakeFiles/cs252.dir/lab1-src/test9.c.o


# Object files for target cs252
cs252_OBJECTS = \
"CMakeFiles/cs252.dir/lab1-src/MyMalloc.c.o" \
"CMakeFiles/cs252.dir/lab1-src/test0.c.o" \
"CMakeFiles/cs252.dir/lab1-src/test1-1.c.o" \
"CMakeFiles/cs252.dir/lab1-src/test1-2.c.o" \
"CMakeFiles/cs252.dir/lab1-src/test1-3.c.o" \
"CMakeFiles/cs252.dir/lab1-src/test1-4.c.o" \
"CMakeFiles/cs252.dir/lab1-src/test1.c.o" \
"CMakeFiles/cs252.dir/lab1-src/test10.c.o" \
"CMakeFiles/cs252.dir/lab1-src/test2.c.o" \
"CMakeFiles/cs252.dir/lab1-src/test3.c.o" \
"CMakeFiles/cs252.dir/lab1-src/test4.c.o" \
"CMakeFiles/cs252.dir/lab1-src/test5.c.o" \
"CMakeFiles/cs252.dir/lab1-src/test6.c.o" \
"CMakeFiles/cs252.dir/lab1-src/test7.c.o" \
"CMakeFiles/cs252.dir/lab1-src/test8.c.o" \
"CMakeFiles/cs252.dir/lab1-src/test9.c.o"

# External object files for target cs252
cs252_EXTERNAL_OBJECTS =

cs252: CMakeFiles/cs252.dir/lab1-src/MyMalloc.c.o
cs252: CMakeFiles/cs252.dir/lab1-src/test0.c.o
cs252: CMakeFiles/cs252.dir/lab1-src/test1-1.c.o
cs252: CMakeFiles/cs252.dir/lab1-src/test1-2.c.o
cs252: CMakeFiles/cs252.dir/lab1-src/test1-3.c.o
cs252: CMakeFiles/cs252.dir/lab1-src/test1-4.c.o
cs252: CMakeFiles/cs252.dir/lab1-src/test1.c.o
cs252: CMakeFiles/cs252.dir/lab1-src/test10.c.o
cs252: CMakeFiles/cs252.dir/lab1-src/test2.c.o
cs252: CMakeFiles/cs252.dir/lab1-src/test3.c.o
cs252: CMakeFiles/cs252.dir/lab1-src/test4.c.o
cs252: CMakeFiles/cs252.dir/lab1-src/test5.c.o
cs252: CMakeFiles/cs252.dir/lab1-src/test6.c.o
cs252: CMakeFiles/cs252.dir/lab1-src/test7.c.o
cs252: CMakeFiles/cs252.dir/lab1-src/test8.c.o
cs252: CMakeFiles/cs252.dir/lab1-src/test9.c.o
cs252: CMakeFiles/cs252.dir/build.make
cs252: CMakeFiles/cs252.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/hanwang/cs252/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_17) "Linking C executable cs252"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/cs252.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/cs252.dir/build: cs252

.PHONY : CMakeFiles/cs252.dir/build

CMakeFiles/cs252.dir/requires: CMakeFiles/cs252.dir/lab1-src/MyMalloc.c.o.requires
CMakeFiles/cs252.dir/requires: CMakeFiles/cs252.dir/lab1-src/test0.c.o.requires
CMakeFiles/cs252.dir/requires: CMakeFiles/cs252.dir/lab1-src/test1-1.c.o.requires
CMakeFiles/cs252.dir/requires: CMakeFiles/cs252.dir/lab1-src/test1-2.c.o.requires
CMakeFiles/cs252.dir/requires: CMakeFiles/cs252.dir/lab1-src/test1-3.c.o.requires
CMakeFiles/cs252.dir/requires: CMakeFiles/cs252.dir/lab1-src/test1-4.c.o.requires
CMakeFiles/cs252.dir/requires: CMakeFiles/cs252.dir/lab1-src/test1.c.o.requires
CMakeFiles/cs252.dir/requires: CMakeFiles/cs252.dir/lab1-src/test10.c.o.requires
CMakeFiles/cs252.dir/requires: CMakeFiles/cs252.dir/lab1-src/test2.c.o.requires
CMakeFiles/cs252.dir/requires: CMakeFiles/cs252.dir/lab1-src/test3.c.o.requires
CMakeFiles/cs252.dir/requires: CMakeFiles/cs252.dir/lab1-src/test4.c.o.requires
CMakeFiles/cs252.dir/requires: CMakeFiles/cs252.dir/lab1-src/test5.c.o.requires
CMakeFiles/cs252.dir/requires: CMakeFiles/cs252.dir/lab1-src/test6.c.o.requires
CMakeFiles/cs252.dir/requires: CMakeFiles/cs252.dir/lab1-src/test7.c.o.requires
CMakeFiles/cs252.dir/requires: CMakeFiles/cs252.dir/lab1-src/test8.c.o.requires
CMakeFiles/cs252.dir/requires: CMakeFiles/cs252.dir/lab1-src/test9.c.o.requires

.PHONY : CMakeFiles/cs252.dir/requires

CMakeFiles/cs252.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/cs252.dir/cmake_clean.cmake
.PHONY : CMakeFiles/cs252.dir/clean

CMakeFiles/cs252.dir/depend:
	cd /home/hanwang/cs252/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/hanwang/cs252 /home/hanwang/cs252 /home/hanwang/cs252/cmake-build-debug /home/hanwang/cs252/cmake-build-debug /home/hanwang/cs252/cmake-build-debug/CMakeFiles/cs252.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/cs252.dir/depend
