# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.5

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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/zs/workspace/linux_program_test/linux_api

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/zs/workspace/linux_program_test/linux_api/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/signal_receiver.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/signal_receiver.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/signal_receiver.dir/flags.make

CMakeFiles/signal_receiver.dir/signal/signal_receiver.c.o: CMakeFiles/signal_receiver.dir/flags.make
CMakeFiles/signal_receiver.dir/signal/signal_receiver.c.o: ../signal/signal_receiver.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/zs/workspace/linux_program_test/linux_api/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/signal_receiver.dir/signal/signal_receiver.c.o"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/signal_receiver.dir/signal/signal_receiver.c.o   -c /home/zs/workspace/linux_program_test/linux_api/signal/signal_receiver.c

CMakeFiles/signal_receiver.dir/signal/signal_receiver.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/signal_receiver.dir/signal/signal_receiver.c.i"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/zs/workspace/linux_program_test/linux_api/signal/signal_receiver.c > CMakeFiles/signal_receiver.dir/signal/signal_receiver.c.i

CMakeFiles/signal_receiver.dir/signal/signal_receiver.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/signal_receiver.dir/signal/signal_receiver.c.s"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/zs/workspace/linux_program_test/linux_api/signal/signal_receiver.c -o CMakeFiles/signal_receiver.dir/signal/signal_receiver.c.s

CMakeFiles/signal_receiver.dir/signal/signal_receiver.c.o.requires:

.PHONY : CMakeFiles/signal_receiver.dir/signal/signal_receiver.c.o.requires

CMakeFiles/signal_receiver.dir/signal/signal_receiver.c.o.provides: CMakeFiles/signal_receiver.dir/signal/signal_receiver.c.o.requires
	$(MAKE) -f CMakeFiles/signal_receiver.dir/build.make CMakeFiles/signal_receiver.dir/signal/signal_receiver.c.o.provides.build
.PHONY : CMakeFiles/signal_receiver.dir/signal/signal_receiver.c.o.provides

CMakeFiles/signal_receiver.dir/signal/signal_receiver.c.o.provides.build: CMakeFiles/signal_receiver.dir/signal/signal_receiver.c.o


CMakeFiles/signal_receiver.dir/lib/error_functions.c.o: CMakeFiles/signal_receiver.dir/flags.make
CMakeFiles/signal_receiver.dir/lib/error_functions.c.o: ../lib/error_functions.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/zs/workspace/linux_program_test/linux_api/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object CMakeFiles/signal_receiver.dir/lib/error_functions.c.o"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/signal_receiver.dir/lib/error_functions.c.o   -c /home/zs/workspace/linux_program_test/linux_api/lib/error_functions.c

CMakeFiles/signal_receiver.dir/lib/error_functions.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/signal_receiver.dir/lib/error_functions.c.i"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/zs/workspace/linux_program_test/linux_api/lib/error_functions.c > CMakeFiles/signal_receiver.dir/lib/error_functions.c.i

CMakeFiles/signal_receiver.dir/lib/error_functions.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/signal_receiver.dir/lib/error_functions.c.s"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/zs/workspace/linux_program_test/linux_api/lib/error_functions.c -o CMakeFiles/signal_receiver.dir/lib/error_functions.c.s

CMakeFiles/signal_receiver.dir/lib/error_functions.c.o.requires:

.PHONY : CMakeFiles/signal_receiver.dir/lib/error_functions.c.o.requires

CMakeFiles/signal_receiver.dir/lib/error_functions.c.o.provides: CMakeFiles/signal_receiver.dir/lib/error_functions.c.o.requires
	$(MAKE) -f CMakeFiles/signal_receiver.dir/build.make CMakeFiles/signal_receiver.dir/lib/error_functions.c.o.provides.build
.PHONY : CMakeFiles/signal_receiver.dir/lib/error_functions.c.o.provides

CMakeFiles/signal_receiver.dir/lib/error_functions.c.o.provides.build: CMakeFiles/signal_receiver.dir/lib/error_functions.c.o


CMakeFiles/signal_receiver.dir/lib/get_num.c.o: CMakeFiles/signal_receiver.dir/flags.make
CMakeFiles/signal_receiver.dir/lib/get_num.c.o: ../lib/get_num.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/zs/workspace/linux_program_test/linux_api/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object CMakeFiles/signal_receiver.dir/lib/get_num.c.o"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/signal_receiver.dir/lib/get_num.c.o   -c /home/zs/workspace/linux_program_test/linux_api/lib/get_num.c

CMakeFiles/signal_receiver.dir/lib/get_num.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/signal_receiver.dir/lib/get_num.c.i"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/zs/workspace/linux_program_test/linux_api/lib/get_num.c > CMakeFiles/signal_receiver.dir/lib/get_num.c.i

CMakeFiles/signal_receiver.dir/lib/get_num.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/signal_receiver.dir/lib/get_num.c.s"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/zs/workspace/linux_program_test/linux_api/lib/get_num.c -o CMakeFiles/signal_receiver.dir/lib/get_num.c.s

CMakeFiles/signal_receiver.dir/lib/get_num.c.o.requires:

.PHONY : CMakeFiles/signal_receiver.dir/lib/get_num.c.o.requires

CMakeFiles/signal_receiver.dir/lib/get_num.c.o.provides: CMakeFiles/signal_receiver.dir/lib/get_num.c.o.requires
	$(MAKE) -f CMakeFiles/signal_receiver.dir/build.make CMakeFiles/signal_receiver.dir/lib/get_num.c.o.provides.build
.PHONY : CMakeFiles/signal_receiver.dir/lib/get_num.c.o.provides

CMakeFiles/signal_receiver.dir/lib/get_num.c.o.provides.build: CMakeFiles/signal_receiver.dir/lib/get_num.c.o


CMakeFiles/signal_receiver.dir/lib/alt_functions.c.o: CMakeFiles/signal_receiver.dir/flags.make
CMakeFiles/signal_receiver.dir/lib/alt_functions.c.o: ../lib/alt_functions.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/zs/workspace/linux_program_test/linux_api/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building C object CMakeFiles/signal_receiver.dir/lib/alt_functions.c.o"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/signal_receiver.dir/lib/alt_functions.c.o   -c /home/zs/workspace/linux_program_test/linux_api/lib/alt_functions.c

CMakeFiles/signal_receiver.dir/lib/alt_functions.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/signal_receiver.dir/lib/alt_functions.c.i"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/zs/workspace/linux_program_test/linux_api/lib/alt_functions.c > CMakeFiles/signal_receiver.dir/lib/alt_functions.c.i

CMakeFiles/signal_receiver.dir/lib/alt_functions.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/signal_receiver.dir/lib/alt_functions.c.s"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/zs/workspace/linux_program_test/linux_api/lib/alt_functions.c -o CMakeFiles/signal_receiver.dir/lib/alt_functions.c.s

CMakeFiles/signal_receiver.dir/lib/alt_functions.c.o.requires:

.PHONY : CMakeFiles/signal_receiver.dir/lib/alt_functions.c.o.requires

CMakeFiles/signal_receiver.dir/lib/alt_functions.c.o.provides: CMakeFiles/signal_receiver.dir/lib/alt_functions.c.o.requires
	$(MAKE) -f CMakeFiles/signal_receiver.dir/build.make CMakeFiles/signal_receiver.dir/lib/alt_functions.c.o.provides.build
.PHONY : CMakeFiles/signal_receiver.dir/lib/alt_functions.c.o.provides

CMakeFiles/signal_receiver.dir/lib/alt_functions.c.o.provides.build: CMakeFiles/signal_receiver.dir/lib/alt_functions.c.o


CMakeFiles/signal_receiver.dir/lib/syscall_speed.c.o: CMakeFiles/signal_receiver.dir/flags.make
CMakeFiles/signal_receiver.dir/lib/syscall_speed.c.o: ../lib/syscall_speed.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/zs/workspace/linux_program_test/linux_api/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building C object CMakeFiles/signal_receiver.dir/lib/syscall_speed.c.o"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/signal_receiver.dir/lib/syscall_speed.c.o   -c /home/zs/workspace/linux_program_test/linux_api/lib/syscall_speed.c

CMakeFiles/signal_receiver.dir/lib/syscall_speed.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/signal_receiver.dir/lib/syscall_speed.c.i"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/zs/workspace/linux_program_test/linux_api/lib/syscall_speed.c > CMakeFiles/signal_receiver.dir/lib/syscall_speed.c.i

CMakeFiles/signal_receiver.dir/lib/syscall_speed.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/signal_receiver.dir/lib/syscall_speed.c.s"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/zs/workspace/linux_program_test/linux_api/lib/syscall_speed.c -o CMakeFiles/signal_receiver.dir/lib/syscall_speed.c.s

CMakeFiles/signal_receiver.dir/lib/syscall_speed.c.o.requires:

.PHONY : CMakeFiles/signal_receiver.dir/lib/syscall_speed.c.o.requires

CMakeFiles/signal_receiver.dir/lib/syscall_speed.c.o.provides: CMakeFiles/signal_receiver.dir/lib/syscall_speed.c.o.requires
	$(MAKE) -f CMakeFiles/signal_receiver.dir/build.make CMakeFiles/signal_receiver.dir/lib/syscall_speed.c.o.provides.build
.PHONY : CMakeFiles/signal_receiver.dir/lib/syscall_speed.c.o.provides

CMakeFiles/signal_receiver.dir/lib/syscall_speed.c.o.provides.build: CMakeFiles/signal_receiver.dir/lib/syscall_speed.c.o


CMakeFiles/signal_receiver.dir/signal/signal_functions.c.o: CMakeFiles/signal_receiver.dir/flags.make
CMakeFiles/signal_receiver.dir/signal/signal_functions.c.o: ../signal/signal_functions.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/zs/workspace/linux_program_test/linux_api/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building C object CMakeFiles/signal_receiver.dir/signal/signal_functions.c.o"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/signal_receiver.dir/signal/signal_functions.c.o   -c /home/zs/workspace/linux_program_test/linux_api/signal/signal_functions.c

CMakeFiles/signal_receiver.dir/signal/signal_functions.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/signal_receiver.dir/signal/signal_functions.c.i"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/zs/workspace/linux_program_test/linux_api/signal/signal_functions.c > CMakeFiles/signal_receiver.dir/signal/signal_functions.c.i

CMakeFiles/signal_receiver.dir/signal/signal_functions.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/signal_receiver.dir/signal/signal_functions.c.s"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/zs/workspace/linux_program_test/linux_api/signal/signal_functions.c -o CMakeFiles/signal_receiver.dir/signal/signal_functions.c.s

CMakeFiles/signal_receiver.dir/signal/signal_functions.c.o.requires:

.PHONY : CMakeFiles/signal_receiver.dir/signal/signal_functions.c.o.requires

CMakeFiles/signal_receiver.dir/signal/signal_functions.c.o.provides: CMakeFiles/signal_receiver.dir/signal/signal_functions.c.o.requires
	$(MAKE) -f CMakeFiles/signal_receiver.dir/build.make CMakeFiles/signal_receiver.dir/signal/signal_functions.c.o.provides.build
.PHONY : CMakeFiles/signal_receiver.dir/signal/signal_functions.c.o.provides

CMakeFiles/signal_receiver.dir/signal/signal_functions.c.o.provides.build: CMakeFiles/signal_receiver.dir/signal/signal_functions.c.o


# Object files for target signal_receiver
signal_receiver_OBJECTS = \
"CMakeFiles/signal_receiver.dir/signal/signal_receiver.c.o" \
"CMakeFiles/signal_receiver.dir/lib/error_functions.c.o" \
"CMakeFiles/signal_receiver.dir/lib/get_num.c.o" \
"CMakeFiles/signal_receiver.dir/lib/alt_functions.c.o" \
"CMakeFiles/signal_receiver.dir/lib/syscall_speed.c.o" \
"CMakeFiles/signal_receiver.dir/signal/signal_functions.c.o"

# External object files for target signal_receiver
signal_receiver_EXTERNAL_OBJECTS =

signal_receiver: CMakeFiles/signal_receiver.dir/signal/signal_receiver.c.o
signal_receiver: CMakeFiles/signal_receiver.dir/lib/error_functions.c.o
signal_receiver: CMakeFiles/signal_receiver.dir/lib/get_num.c.o
signal_receiver: CMakeFiles/signal_receiver.dir/lib/alt_functions.c.o
signal_receiver: CMakeFiles/signal_receiver.dir/lib/syscall_speed.c.o
signal_receiver: CMakeFiles/signal_receiver.dir/signal/signal_functions.c.o
signal_receiver: CMakeFiles/signal_receiver.dir/build.make
signal_receiver: CMakeFiles/signal_receiver.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/zs/workspace/linux_program_test/linux_api/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Linking C executable signal_receiver"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/signal_receiver.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/signal_receiver.dir/build: signal_receiver

.PHONY : CMakeFiles/signal_receiver.dir/build

CMakeFiles/signal_receiver.dir/requires: CMakeFiles/signal_receiver.dir/signal/signal_receiver.c.o.requires
CMakeFiles/signal_receiver.dir/requires: CMakeFiles/signal_receiver.dir/lib/error_functions.c.o.requires
CMakeFiles/signal_receiver.dir/requires: CMakeFiles/signal_receiver.dir/lib/get_num.c.o.requires
CMakeFiles/signal_receiver.dir/requires: CMakeFiles/signal_receiver.dir/lib/alt_functions.c.o.requires
CMakeFiles/signal_receiver.dir/requires: CMakeFiles/signal_receiver.dir/lib/syscall_speed.c.o.requires
CMakeFiles/signal_receiver.dir/requires: CMakeFiles/signal_receiver.dir/signal/signal_functions.c.o.requires

.PHONY : CMakeFiles/signal_receiver.dir/requires

CMakeFiles/signal_receiver.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/signal_receiver.dir/cmake_clean.cmake
.PHONY : CMakeFiles/signal_receiver.dir/clean

CMakeFiles/signal_receiver.dir/depend:
	cd /home/zs/workspace/linux_program_test/linux_api/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/zs/workspace/linux_program_test/linux_api /home/zs/workspace/linux_program_test/linux_api /home/zs/workspace/linux_program_test/linux_api/cmake-build-debug /home/zs/workspace/linux_program_test/linux_api/cmake-build-debug /home/zs/workspace/linux_program_test/linux_api/cmake-build-debug/CMakeFiles/signal_receiver.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/signal_receiver.dir/depend

