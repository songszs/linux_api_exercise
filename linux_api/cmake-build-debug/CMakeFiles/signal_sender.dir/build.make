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
include CMakeFiles/signal_sender.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/signal_sender.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/signal_sender.dir/flags.make

CMakeFiles/signal_sender.dir/signal/signal_sender.c.o: CMakeFiles/signal_sender.dir/flags.make
CMakeFiles/signal_sender.dir/signal/signal_sender.c.o: ../signal/signal_sender.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/zs/workspace/linux_program_test/linux_api/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/signal_sender.dir/signal/signal_sender.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/signal_sender.dir/signal/signal_sender.c.o   -c /home/zs/workspace/linux_program_test/linux_api/signal/signal_sender.c

CMakeFiles/signal_sender.dir/signal/signal_sender.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/signal_sender.dir/signal/signal_sender.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/zs/workspace/linux_program_test/linux_api/signal/signal_sender.c > CMakeFiles/signal_sender.dir/signal/signal_sender.c.i

CMakeFiles/signal_sender.dir/signal/signal_sender.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/signal_sender.dir/signal/signal_sender.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/zs/workspace/linux_program_test/linux_api/signal/signal_sender.c -o CMakeFiles/signal_sender.dir/signal/signal_sender.c.s

CMakeFiles/signal_sender.dir/signal/signal_sender.c.o.requires:

.PHONY : CMakeFiles/signal_sender.dir/signal/signal_sender.c.o.requires

CMakeFiles/signal_sender.dir/signal/signal_sender.c.o.provides: CMakeFiles/signal_sender.dir/signal/signal_sender.c.o.requires
	$(MAKE) -f CMakeFiles/signal_sender.dir/build.make CMakeFiles/signal_sender.dir/signal/signal_sender.c.o.provides.build
.PHONY : CMakeFiles/signal_sender.dir/signal/signal_sender.c.o.provides

CMakeFiles/signal_sender.dir/signal/signal_sender.c.o.provides.build: CMakeFiles/signal_sender.dir/signal/signal_sender.c.o


CMakeFiles/signal_sender.dir/lib/error_functions.c.o: CMakeFiles/signal_sender.dir/flags.make
CMakeFiles/signal_sender.dir/lib/error_functions.c.o: ../lib/error_functions.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/zs/workspace/linux_program_test/linux_api/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object CMakeFiles/signal_sender.dir/lib/error_functions.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/signal_sender.dir/lib/error_functions.c.o   -c /home/zs/workspace/linux_program_test/linux_api/lib/error_functions.c

CMakeFiles/signal_sender.dir/lib/error_functions.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/signal_sender.dir/lib/error_functions.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/zs/workspace/linux_program_test/linux_api/lib/error_functions.c > CMakeFiles/signal_sender.dir/lib/error_functions.c.i

CMakeFiles/signal_sender.dir/lib/error_functions.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/signal_sender.dir/lib/error_functions.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/zs/workspace/linux_program_test/linux_api/lib/error_functions.c -o CMakeFiles/signal_sender.dir/lib/error_functions.c.s

CMakeFiles/signal_sender.dir/lib/error_functions.c.o.requires:

.PHONY : CMakeFiles/signal_sender.dir/lib/error_functions.c.o.requires

CMakeFiles/signal_sender.dir/lib/error_functions.c.o.provides: CMakeFiles/signal_sender.dir/lib/error_functions.c.o.requires
	$(MAKE) -f CMakeFiles/signal_sender.dir/build.make CMakeFiles/signal_sender.dir/lib/error_functions.c.o.provides.build
.PHONY : CMakeFiles/signal_sender.dir/lib/error_functions.c.o.provides

CMakeFiles/signal_sender.dir/lib/error_functions.c.o.provides.build: CMakeFiles/signal_sender.dir/lib/error_functions.c.o


CMakeFiles/signal_sender.dir/lib/get_num.c.o: CMakeFiles/signal_sender.dir/flags.make
CMakeFiles/signal_sender.dir/lib/get_num.c.o: ../lib/get_num.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/zs/workspace/linux_program_test/linux_api/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object CMakeFiles/signal_sender.dir/lib/get_num.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/signal_sender.dir/lib/get_num.c.o   -c /home/zs/workspace/linux_program_test/linux_api/lib/get_num.c

CMakeFiles/signal_sender.dir/lib/get_num.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/signal_sender.dir/lib/get_num.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/zs/workspace/linux_program_test/linux_api/lib/get_num.c > CMakeFiles/signal_sender.dir/lib/get_num.c.i

CMakeFiles/signal_sender.dir/lib/get_num.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/signal_sender.dir/lib/get_num.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/zs/workspace/linux_program_test/linux_api/lib/get_num.c -o CMakeFiles/signal_sender.dir/lib/get_num.c.s

CMakeFiles/signal_sender.dir/lib/get_num.c.o.requires:

.PHONY : CMakeFiles/signal_sender.dir/lib/get_num.c.o.requires

CMakeFiles/signal_sender.dir/lib/get_num.c.o.provides: CMakeFiles/signal_sender.dir/lib/get_num.c.o.requires
	$(MAKE) -f CMakeFiles/signal_sender.dir/build.make CMakeFiles/signal_sender.dir/lib/get_num.c.o.provides.build
.PHONY : CMakeFiles/signal_sender.dir/lib/get_num.c.o.provides

CMakeFiles/signal_sender.dir/lib/get_num.c.o.provides.build: CMakeFiles/signal_sender.dir/lib/get_num.c.o


CMakeFiles/signal_sender.dir/lib/alt_functions.c.o: CMakeFiles/signal_sender.dir/flags.make
CMakeFiles/signal_sender.dir/lib/alt_functions.c.o: ../lib/alt_functions.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/zs/workspace/linux_program_test/linux_api/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building C object CMakeFiles/signal_sender.dir/lib/alt_functions.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/signal_sender.dir/lib/alt_functions.c.o   -c /home/zs/workspace/linux_program_test/linux_api/lib/alt_functions.c

CMakeFiles/signal_sender.dir/lib/alt_functions.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/signal_sender.dir/lib/alt_functions.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/zs/workspace/linux_program_test/linux_api/lib/alt_functions.c > CMakeFiles/signal_sender.dir/lib/alt_functions.c.i

CMakeFiles/signal_sender.dir/lib/alt_functions.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/signal_sender.dir/lib/alt_functions.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/zs/workspace/linux_program_test/linux_api/lib/alt_functions.c -o CMakeFiles/signal_sender.dir/lib/alt_functions.c.s

CMakeFiles/signal_sender.dir/lib/alt_functions.c.o.requires:

.PHONY : CMakeFiles/signal_sender.dir/lib/alt_functions.c.o.requires

CMakeFiles/signal_sender.dir/lib/alt_functions.c.o.provides: CMakeFiles/signal_sender.dir/lib/alt_functions.c.o.requires
	$(MAKE) -f CMakeFiles/signal_sender.dir/build.make CMakeFiles/signal_sender.dir/lib/alt_functions.c.o.provides.build
.PHONY : CMakeFiles/signal_sender.dir/lib/alt_functions.c.o.provides

CMakeFiles/signal_sender.dir/lib/alt_functions.c.o.provides.build: CMakeFiles/signal_sender.dir/lib/alt_functions.c.o


CMakeFiles/signal_sender.dir/lib/syscall_speed.c.o: CMakeFiles/signal_sender.dir/flags.make
CMakeFiles/signal_sender.dir/lib/syscall_speed.c.o: ../lib/syscall_speed.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/zs/workspace/linux_program_test/linux_api/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building C object CMakeFiles/signal_sender.dir/lib/syscall_speed.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/signal_sender.dir/lib/syscall_speed.c.o   -c /home/zs/workspace/linux_program_test/linux_api/lib/syscall_speed.c

CMakeFiles/signal_sender.dir/lib/syscall_speed.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/signal_sender.dir/lib/syscall_speed.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/zs/workspace/linux_program_test/linux_api/lib/syscall_speed.c > CMakeFiles/signal_sender.dir/lib/syscall_speed.c.i

CMakeFiles/signal_sender.dir/lib/syscall_speed.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/signal_sender.dir/lib/syscall_speed.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/zs/workspace/linux_program_test/linux_api/lib/syscall_speed.c -o CMakeFiles/signal_sender.dir/lib/syscall_speed.c.s

CMakeFiles/signal_sender.dir/lib/syscall_speed.c.o.requires:

.PHONY : CMakeFiles/signal_sender.dir/lib/syscall_speed.c.o.requires

CMakeFiles/signal_sender.dir/lib/syscall_speed.c.o.provides: CMakeFiles/signal_sender.dir/lib/syscall_speed.c.o.requires
	$(MAKE) -f CMakeFiles/signal_sender.dir/build.make CMakeFiles/signal_sender.dir/lib/syscall_speed.c.o.provides.build
.PHONY : CMakeFiles/signal_sender.dir/lib/syscall_speed.c.o.provides

CMakeFiles/signal_sender.dir/lib/syscall_speed.c.o.provides.build: CMakeFiles/signal_sender.dir/lib/syscall_speed.c.o


CMakeFiles/signal_sender.dir/signal/signal_functions.c.o: CMakeFiles/signal_sender.dir/flags.make
CMakeFiles/signal_sender.dir/signal/signal_functions.c.o: ../signal/signal_functions.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/zs/workspace/linux_program_test/linux_api/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building C object CMakeFiles/signal_sender.dir/signal/signal_functions.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/signal_sender.dir/signal/signal_functions.c.o   -c /home/zs/workspace/linux_program_test/linux_api/signal/signal_functions.c

CMakeFiles/signal_sender.dir/signal/signal_functions.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/signal_sender.dir/signal/signal_functions.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/zs/workspace/linux_program_test/linux_api/signal/signal_functions.c > CMakeFiles/signal_sender.dir/signal/signal_functions.c.i

CMakeFiles/signal_sender.dir/signal/signal_functions.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/signal_sender.dir/signal/signal_functions.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/zs/workspace/linux_program_test/linux_api/signal/signal_functions.c -o CMakeFiles/signal_sender.dir/signal/signal_functions.c.s

CMakeFiles/signal_sender.dir/signal/signal_functions.c.o.requires:

.PHONY : CMakeFiles/signal_sender.dir/signal/signal_functions.c.o.requires

CMakeFiles/signal_sender.dir/signal/signal_functions.c.o.provides: CMakeFiles/signal_sender.dir/signal/signal_functions.c.o.requires
	$(MAKE) -f CMakeFiles/signal_sender.dir/build.make CMakeFiles/signal_sender.dir/signal/signal_functions.c.o.provides.build
.PHONY : CMakeFiles/signal_sender.dir/signal/signal_functions.c.o.provides

CMakeFiles/signal_sender.dir/signal/signal_functions.c.o.provides.build: CMakeFiles/signal_sender.dir/signal/signal_functions.c.o


# Object files for target signal_sender
signal_sender_OBJECTS = \
"CMakeFiles/signal_sender.dir/signal/signal_sender.c.o" \
"CMakeFiles/signal_sender.dir/lib/error_functions.c.o" \
"CMakeFiles/signal_sender.dir/lib/get_num.c.o" \
"CMakeFiles/signal_sender.dir/lib/alt_functions.c.o" \
"CMakeFiles/signal_sender.dir/lib/syscall_speed.c.o" \
"CMakeFiles/signal_sender.dir/signal/signal_functions.c.o"

# External object files for target signal_sender
signal_sender_EXTERNAL_OBJECTS =

signal_sender: CMakeFiles/signal_sender.dir/signal/signal_sender.c.o
signal_sender: CMakeFiles/signal_sender.dir/lib/error_functions.c.o
signal_sender: CMakeFiles/signal_sender.dir/lib/get_num.c.o
signal_sender: CMakeFiles/signal_sender.dir/lib/alt_functions.c.o
signal_sender: CMakeFiles/signal_sender.dir/lib/syscall_speed.c.o
signal_sender: CMakeFiles/signal_sender.dir/signal/signal_functions.c.o
signal_sender: CMakeFiles/signal_sender.dir/build.make
signal_sender: CMakeFiles/signal_sender.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/zs/workspace/linux_program_test/linux_api/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Linking C executable signal_sender"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/signal_sender.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/signal_sender.dir/build: signal_sender

.PHONY : CMakeFiles/signal_sender.dir/build

CMakeFiles/signal_sender.dir/requires: CMakeFiles/signal_sender.dir/signal/signal_sender.c.o.requires
CMakeFiles/signal_sender.dir/requires: CMakeFiles/signal_sender.dir/lib/error_functions.c.o.requires
CMakeFiles/signal_sender.dir/requires: CMakeFiles/signal_sender.dir/lib/get_num.c.o.requires
CMakeFiles/signal_sender.dir/requires: CMakeFiles/signal_sender.dir/lib/alt_functions.c.o.requires
CMakeFiles/signal_sender.dir/requires: CMakeFiles/signal_sender.dir/lib/syscall_speed.c.o.requires
CMakeFiles/signal_sender.dir/requires: CMakeFiles/signal_sender.dir/signal/signal_functions.c.o.requires

.PHONY : CMakeFiles/signal_sender.dir/requires

CMakeFiles/signal_sender.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/signal_sender.dir/cmake_clean.cmake
.PHONY : CMakeFiles/signal_sender.dir/clean

CMakeFiles/signal_sender.dir/depend:
	cd /home/zs/workspace/linux_program_test/linux_api/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/zs/workspace/linux_program_test/linux_api /home/zs/workspace/linux_program_test/linux_api /home/zs/workspace/linux_program_test/linux_api/cmake-build-debug /home/zs/workspace/linux_program_test/linux_api/cmake-build-debug /home/zs/workspace/linux_program_test/linux_api/cmake-build-debug/CMakeFiles/signal_sender.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/signal_sender.dir/depend

