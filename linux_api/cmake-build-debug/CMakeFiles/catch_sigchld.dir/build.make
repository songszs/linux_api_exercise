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
CMAKE_COMMAND = /home/zs/ide/clion-2017.2.2/bin/cmake/bin/cmake

# The command to remove a file.
RM = /home/zs/ide/clion-2017.2.2/bin/cmake/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/zs/workspace/linux_program_test/linux_api

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/zs/workspace/linux_program_test/linux_api/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/catch_sigchld.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/catch_sigchld.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/catch_sigchld.dir/flags.make

CMakeFiles/catch_sigchld.dir/signal/catch_sigchld.c.o: CMakeFiles/catch_sigchld.dir/flags.make
CMakeFiles/catch_sigchld.dir/signal/catch_sigchld.c.o: ../signal/catch_sigchld.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/zs/workspace/linux_program_test/linux_api/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/catch_sigchld.dir/signal/catch_sigchld.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/catch_sigchld.dir/signal/catch_sigchld.c.o   -c /home/zs/workspace/linux_program_test/linux_api/signal/catch_sigchld.c

CMakeFiles/catch_sigchld.dir/signal/catch_sigchld.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/catch_sigchld.dir/signal/catch_sigchld.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/zs/workspace/linux_program_test/linux_api/signal/catch_sigchld.c > CMakeFiles/catch_sigchld.dir/signal/catch_sigchld.c.i

CMakeFiles/catch_sigchld.dir/signal/catch_sigchld.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/catch_sigchld.dir/signal/catch_sigchld.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/zs/workspace/linux_program_test/linux_api/signal/catch_sigchld.c -o CMakeFiles/catch_sigchld.dir/signal/catch_sigchld.c.s

CMakeFiles/catch_sigchld.dir/signal/catch_sigchld.c.o.requires:

.PHONY : CMakeFiles/catch_sigchld.dir/signal/catch_sigchld.c.o.requires

CMakeFiles/catch_sigchld.dir/signal/catch_sigchld.c.o.provides: CMakeFiles/catch_sigchld.dir/signal/catch_sigchld.c.o.requires
	$(MAKE) -f CMakeFiles/catch_sigchld.dir/build.make CMakeFiles/catch_sigchld.dir/signal/catch_sigchld.c.o.provides.build
.PHONY : CMakeFiles/catch_sigchld.dir/signal/catch_sigchld.c.o.provides

CMakeFiles/catch_sigchld.dir/signal/catch_sigchld.c.o.provides.build: CMakeFiles/catch_sigchld.dir/signal/catch_sigchld.c.o


CMakeFiles/catch_sigchld.dir/lib/error_functions.c.o: CMakeFiles/catch_sigchld.dir/flags.make
CMakeFiles/catch_sigchld.dir/lib/error_functions.c.o: ../lib/error_functions.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/zs/workspace/linux_program_test/linux_api/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object CMakeFiles/catch_sigchld.dir/lib/error_functions.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/catch_sigchld.dir/lib/error_functions.c.o   -c /home/zs/workspace/linux_program_test/linux_api/lib/error_functions.c

CMakeFiles/catch_sigchld.dir/lib/error_functions.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/catch_sigchld.dir/lib/error_functions.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/zs/workspace/linux_program_test/linux_api/lib/error_functions.c > CMakeFiles/catch_sigchld.dir/lib/error_functions.c.i

CMakeFiles/catch_sigchld.dir/lib/error_functions.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/catch_sigchld.dir/lib/error_functions.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/zs/workspace/linux_program_test/linux_api/lib/error_functions.c -o CMakeFiles/catch_sigchld.dir/lib/error_functions.c.s

CMakeFiles/catch_sigchld.dir/lib/error_functions.c.o.requires:

.PHONY : CMakeFiles/catch_sigchld.dir/lib/error_functions.c.o.requires

CMakeFiles/catch_sigchld.dir/lib/error_functions.c.o.provides: CMakeFiles/catch_sigchld.dir/lib/error_functions.c.o.requires
	$(MAKE) -f CMakeFiles/catch_sigchld.dir/build.make CMakeFiles/catch_sigchld.dir/lib/error_functions.c.o.provides.build
.PHONY : CMakeFiles/catch_sigchld.dir/lib/error_functions.c.o.provides

CMakeFiles/catch_sigchld.dir/lib/error_functions.c.o.provides.build: CMakeFiles/catch_sigchld.dir/lib/error_functions.c.o


CMakeFiles/catch_sigchld.dir/lib/get_num.c.o: CMakeFiles/catch_sigchld.dir/flags.make
CMakeFiles/catch_sigchld.dir/lib/get_num.c.o: ../lib/get_num.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/zs/workspace/linux_program_test/linux_api/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object CMakeFiles/catch_sigchld.dir/lib/get_num.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/catch_sigchld.dir/lib/get_num.c.o   -c /home/zs/workspace/linux_program_test/linux_api/lib/get_num.c

CMakeFiles/catch_sigchld.dir/lib/get_num.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/catch_sigchld.dir/lib/get_num.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/zs/workspace/linux_program_test/linux_api/lib/get_num.c > CMakeFiles/catch_sigchld.dir/lib/get_num.c.i

CMakeFiles/catch_sigchld.dir/lib/get_num.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/catch_sigchld.dir/lib/get_num.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/zs/workspace/linux_program_test/linux_api/lib/get_num.c -o CMakeFiles/catch_sigchld.dir/lib/get_num.c.s

CMakeFiles/catch_sigchld.dir/lib/get_num.c.o.requires:

.PHONY : CMakeFiles/catch_sigchld.dir/lib/get_num.c.o.requires

CMakeFiles/catch_sigchld.dir/lib/get_num.c.o.provides: CMakeFiles/catch_sigchld.dir/lib/get_num.c.o.requires
	$(MAKE) -f CMakeFiles/catch_sigchld.dir/build.make CMakeFiles/catch_sigchld.dir/lib/get_num.c.o.provides.build
.PHONY : CMakeFiles/catch_sigchld.dir/lib/get_num.c.o.provides

CMakeFiles/catch_sigchld.dir/lib/get_num.c.o.provides.build: CMakeFiles/catch_sigchld.dir/lib/get_num.c.o


CMakeFiles/catch_sigchld.dir/lib/alt_functions.c.o: CMakeFiles/catch_sigchld.dir/flags.make
CMakeFiles/catch_sigchld.dir/lib/alt_functions.c.o: ../lib/alt_functions.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/zs/workspace/linux_program_test/linux_api/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building C object CMakeFiles/catch_sigchld.dir/lib/alt_functions.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/catch_sigchld.dir/lib/alt_functions.c.o   -c /home/zs/workspace/linux_program_test/linux_api/lib/alt_functions.c

CMakeFiles/catch_sigchld.dir/lib/alt_functions.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/catch_sigchld.dir/lib/alt_functions.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/zs/workspace/linux_program_test/linux_api/lib/alt_functions.c > CMakeFiles/catch_sigchld.dir/lib/alt_functions.c.i

CMakeFiles/catch_sigchld.dir/lib/alt_functions.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/catch_sigchld.dir/lib/alt_functions.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/zs/workspace/linux_program_test/linux_api/lib/alt_functions.c -o CMakeFiles/catch_sigchld.dir/lib/alt_functions.c.s

CMakeFiles/catch_sigchld.dir/lib/alt_functions.c.o.requires:

.PHONY : CMakeFiles/catch_sigchld.dir/lib/alt_functions.c.o.requires

CMakeFiles/catch_sigchld.dir/lib/alt_functions.c.o.provides: CMakeFiles/catch_sigchld.dir/lib/alt_functions.c.o.requires
	$(MAKE) -f CMakeFiles/catch_sigchld.dir/build.make CMakeFiles/catch_sigchld.dir/lib/alt_functions.c.o.provides.build
.PHONY : CMakeFiles/catch_sigchld.dir/lib/alt_functions.c.o.provides

CMakeFiles/catch_sigchld.dir/lib/alt_functions.c.o.provides.build: CMakeFiles/catch_sigchld.dir/lib/alt_functions.c.o


CMakeFiles/catch_sigchld.dir/lib/syscall_speed.c.o: CMakeFiles/catch_sigchld.dir/flags.make
CMakeFiles/catch_sigchld.dir/lib/syscall_speed.c.o: ../lib/syscall_speed.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/zs/workspace/linux_program_test/linux_api/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building C object CMakeFiles/catch_sigchld.dir/lib/syscall_speed.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/catch_sigchld.dir/lib/syscall_speed.c.o   -c /home/zs/workspace/linux_program_test/linux_api/lib/syscall_speed.c

CMakeFiles/catch_sigchld.dir/lib/syscall_speed.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/catch_sigchld.dir/lib/syscall_speed.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/zs/workspace/linux_program_test/linux_api/lib/syscall_speed.c > CMakeFiles/catch_sigchld.dir/lib/syscall_speed.c.i

CMakeFiles/catch_sigchld.dir/lib/syscall_speed.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/catch_sigchld.dir/lib/syscall_speed.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/zs/workspace/linux_program_test/linux_api/lib/syscall_speed.c -o CMakeFiles/catch_sigchld.dir/lib/syscall_speed.c.s

CMakeFiles/catch_sigchld.dir/lib/syscall_speed.c.o.requires:

.PHONY : CMakeFiles/catch_sigchld.dir/lib/syscall_speed.c.o.requires

CMakeFiles/catch_sigchld.dir/lib/syscall_speed.c.o.provides: CMakeFiles/catch_sigchld.dir/lib/syscall_speed.c.o.requires
	$(MAKE) -f CMakeFiles/catch_sigchld.dir/build.make CMakeFiles/catch_sigchld.dir/lib/syscall_speed.c.o.provides.build
.PHONY : CMakeFiles/catch_sigchld.dir/lib/syscall_speed.c.o.provides

CMakeFiles/catch_sigchld.dir/lib/syscall_speed.c.o.provides.build: CMakeFiles/catch_sigchld.dir/lib/syscall_speed.c.o


CMakeFiles/catch_sigchld.dir/signal/signal_functions.c.o: CMakeFiles/catch_sigchld.dir/flags.make
CMakeFiles/catch_sigchld.dir/signal/signal_functions.c.o: ../signal/signal_functions.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/zs/workspace/linux_program_test/linux_api/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building C object CMakeFiles/catch_sigchld.dir/signal/signal_functions.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/catch_sigchld.dir/signal/signal_functions.c.o   -c /home/zs/workspace/linux_program_test/linux_api/signal/signal_functions.c

CMakeFiles/catch_sigchld.dir/signal/signal_functions.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/catch_sigchld.dir/signal/signal_functions.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/zs/workspace/linux_program_test/linux_api/signal/signal_functions.c > CMakeFiles/catch_sigchld.dir/signal/signal_functions.c.i

CMakeFiles/catch_sigchld.dir/signal/signal_functions.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/catch_sigchld.dir/signal/signal_functions.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/zs/workspace/linux_program_test/linux_api/signal/signal_functions.c -o CMakeFiles/catch_sigchld.dir/signal/signal_functions.c.s

CMakeFiles/catch_sigchld.dir/signal/signal_functions.c.o.requires:

.PHONY : CMakeFiles/catch_sigchld.dir/signal/signal_functions.c.o.requires

CMakeFiles/catch_sigchld.dir/signal/signal_functions.c.o.provides: CMakeFiles/catch_sigchld.dir/signal/signal_functions.c.o.requires
	$(MAKE) -f CMakeFiles/catch_sigchld.dir/build.make CMakeFiles/catch_sigchld.dir/signal/signal_functions.c.o.provides.build
.PHONY : CMakeFiles/catch_sigchld.dir/signal/signal_functions.c.o.provides

CMakeFiles/catch_sigchld.dir/signal/signal_functions.c.o.provides.build: CMakeFiles/catch_sigchld.dir/signal/signal_functions.c.o


# Object files for target catch_sigchld
catch_sigchld_OBJECTS = \
"CMakeFiles/catch_sigchld.dir/signal/catch_sigchld.c.o" \
"CMakeFiles/catch_sigchld.dir/lib/error_functions.c.o" \
"CMakeFiles/catch_sigchld.dir/lib/get_num.c.o" \
"CMakeFiles/catch_sigchld.dir/lib/alt_functions.c.o" \
"CMakeFiles/catch_sigchld.dir/lib/syscall_speed.c.o" \
"CMakeFiles/catch_sigchld.dir/signal/signal_functions.c.o"

# External object files for target catch_sigchld
catch_sigchld_EXTERNAL_OBJECTS =

catch_sigchld: CMakeFiles/catch_sigchld.dir/signal/catch_sigchld.c.o
catch_sigchld: CMakeFiles/catch_sigchld.dir/lib/error_functions.c.o
catch_sigchld: CMakeFiles/catch_sigchld.dir/lib/get_num.c.o
catch_sigchld: CMakeFiles/catch_sigchld.dir/lib/alt_functions.c.o
catch_sigchld: CMakeFiles/catch_sigchld.dir/lib/syscall_speed.c.o
catch_sigchld: CMakeFiles/catch_sigchld.dir/signal/signal_functions.c.o
catch_sigchld: CMakeFiles/catch_sigchld.dir/build.make
catch_sigchld: CMakeFiles/catch_sigchld.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/zs/workspace/linux_program_test/linux_api/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Linking C executable catch_sigchld"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/catch_sigchld.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/catch_sigchld.dir/build: catch_sigchld

.PHONY : CMakeFiles/catch_sigchld.dir/build

CMakeFiles/catch_sigchld.dir/requires: CMakeFiles/catch_sigchld.dir/signal/catch_sigchld.c.o.requires
CMakeFiles/catch_sigchld.dir/requires: CMakeFiles/catch_sigchld.dir/lib/error_functions.c.o.requires
CMakeFiles/catch_sigchld.dir/requires: CMakeFiles/catch_sigchld.dir/lib/get_num.c.o.requires
CMakeFiles/catch_sigchld.dir/requires: CMakeFiles/catch_sigchld.dir/lib/alt_functions.c.o.requires
CMakeFiles/catch_sigchld.dir/requires: CMakeFiles/catch_sigchld.dir/lib/syscall_speed.c.o.requires
CMakeFiles/catch_sigchld.dir/requires: CMakeFiles/catch_sigchld.dir/signal/signal_functions.c.o.requires

.PHONY : CMakeFiles/catch_sigchld.dir/requires

CMakeFiles/catch_sigchld.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/catch_sigchld.dir/cmake_clean.cmake
.PHONY : CMakeFiles/catch_sigchld.dir/clean

CMakeFiles/catch_sigchld.dir/depend:
	cd /home/zs/workspace/linux_program_test/linux_api/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/zs/workspace/linux_program_test/linux_api /home/zs/workspace/linux_program_test/linux_api /home/zs/workspace/linux_program_test/linux_api/cmake-build-debug /home/zs/workspace/linux_program_test/linux_api/cmake-build-debug /home/zs/workspace/linux_program_test/linux_api/cmake-build-debug/CMakeFiles/catch_sigchld.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/catch_sigchld.dir/depend
