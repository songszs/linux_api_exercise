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
include CMakeFiles/catch_t_sigs.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/catch_t_sigs.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/catch_t_sigs.dir/flags.make

CMakeFiles/catch_t_sigs.dir/signal/catch_t_sigs.c.o: CMakeFiles/catch_t_sigs.dir/flags.make
CMakeFiles/catch_t_sigs.dir/signal/catch_t_sigs.c.o: ../signal/catch_t_sigs.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/zs/workspace/linux_program_test/linux_api/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/catch_t_sigs.dir/signal/catch_t_sigs.c.o"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/catch_t_sigs.dir/signal/catch_t_sigs.c.o   -c /home/zs/workspace/linux_program_test/linux_api/signal/catch_t_sigs.c

CMakeFiles/catch_t_sigs.dir/signal/catch_t_sigs.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/catch_t_sigs.dir/signal/catch_t_sigs.c.i"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/zs/workspace/linux_program_test/linux_api/signal/catch_t_sigs.c > CMakeFiles/catch_t_sigs.dir/signal/catch_t_sigs.c.i

CMakeFiles/catch_t_sigs.dir/signal/catch_t_sigs.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/catch_t_sigs.dir/signal/catch_t_sigs.c.s"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/zs/workspace/linux_program_test/linux_api/signal/catch_t_sigs.c -o CMakeFiles/catch_t_sigs.dir/signal/catch_t_sigs.c.s

CMakeFiles/catch_t_sigs.dir/signal/catch_t_sigs.c.o.requires:

.PHONY : CMakeFiles/catch_t_sigs.dir/signal/catch_t_sigs.c.o.requires

CMakeFiles/catch_t_sigs.dir/signal/catch_t_sigs.c.o.provides: CMakeFiles/catch_t_sigs.dir/signal/catch_t_sigs.c.o.requires
	$(MAKE) -f CMakeFiles/catch_t_sigs.dir/build.make CMakeFiles/catch_t_sigs.dir/signal/catch_t_sigs.c.o.provides.build
.PHONY : CMakeFiles/catch_t_sigs.dir/signal/catch_t_sigs.c.o.provides

CMakeFiles/catch_t_sigs.dir/signal/catch_t_sigs.c.o.provides.build: CMakeFiles/catch_t_sigs.dir/signal/catch_t_sigs.c.o


CMakeFiles/catch_t_sigs.dir/lib/error_functions.c.o: CMakeFiles/catch_t_sigs.dir/flags.make
CMakeFiles/catch_t_sigs.dir/lib/error_functions.c.o: ../lib/error_functions.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/zs/workspace/linux_program_test/linux_api/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object CMakeFiles/catch_t_sigs.dir/lib/error_functions.c.o"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/catch_t_sigs.dir/lib/error_functions.c.o   -c /home/zs/workspace/linux_program_test/linux_api/lib/error_functions.c

CMakeFiles/catch_t_sigs.dir/lib/error_functions.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/catch_t_sigs.dir/lib/error_functions.c.i"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/zs/workspace/linux_program_test/linux_api/lib/error_functions.c > CMakeFiles/catch_t_sigs.dir/lib/error_functions.c.i

CMakeFiles/catch_t_sigs.dir/lib/error_functions.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/catch_t_sigs.dir/lib/error_functions.c.s"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/zs/workspace/linux_program_test/linux_api/lib/error_functions.c -o CMakeFiles/catch_t_sigs.dir/lib/error_functions.c.s

CMakeFiles/catch_t_sigs.dir/lib/error_functions.c.o.requires:

.PHONY : CMakeFiles/catch_t_sigs.dir/lib/error_functions.c.o.requires

CMakeFiles/catch_t_sigs.dir/lib/error_functions.c.o.provides: CMakeFiles/catch_t_sigs.dir/lib/error_functions.c.o.requires
	$(MAKE) -f CMakeFiles/catch_t_sigs.dir/build.make CMakeFiles/catch_t_sigs.dir/lib/error_functions.c.o.provides.build
.PHONY : CMakeFiles/catch_t_sigs.dir/lib/error_functions.c.o.provides

CMakeFiles/catch_t_sigs.dir/lib/error_functions.c.o.provides.build: CMakeFiles/catch_t_sigs.dir/lib/error_functions.c.o


CMakeFiles/catch_t_sigs.dir/lib/get_num.c.o: CMakeFiles/catch_t_sigs.dir/flags.make
CMakeFiles/catch_t_sigs.dir/lib/get_num.c.o: ../lib/get_num.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/zs/workspace/linux_program_test/linux_api/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object CMakeFiles/catch_t_sigs.dir/lib/get_num.c.o"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/catch_t_sigs.dir/lib/get_num.c.o   -c /home/zs/workspace/linux_program_test/linux_api/lib/get_num.c

CMakeFiles/catch_t_sigs.dir/lib/get_num.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/catch_t_sigs.dir/lib/get_num.c.i"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/zs/workspace/linux_program_test/linux_api/lib/get_num.c > CMakeFiles/catch_t_sigs.dir/lib/get_num.c.i

CMakeFiles/catch_t_sigs.dir/lib/get_num.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/catch_t_sigs.dir/lib/get_num.c.s"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/zs/workspace/linux_program_test/linux_api/lib/get_num.c -o CMakeFiles/catch_t_sigs.dir/lib/get_num.c.s

CMakeFiles/catch_t_sigs.dir/lib/get_num.c.o.requires:

.PHONY : CMakeFiles/catch_t_sigs.dir/lib/get_num.c.o.requires

CMakeFiles/catch_t_sigs.dir/lib/get_num.c.o.provides: CMakeFiles/catch_t_sigs.dir/lib/get_num.c.o.requires
	$(MAKE) -f CMakeFiles/catch_t_sigs.dir/build.make CMakeFiles/catch_t_sigs.dir/lib/get_num.c.o.provides.build
.PHONY : CMakeFiles/catch_t_sigs.dir/lib/get_num.c.o.provides

CMakeFiles/catch_t_sigs.dir/lib/get_num.c.o.provides.build: CMakeFiles/catch_t_sigs.dir/lib/get_num.c.o


CMakeFiles/catch_t_sigs.dir/lib/alt_functions.c.o: CMakeFiles/catch_t_sigs.dir/flags.make
CMakeFiles/catch_t_sigs.dir/lib/alt_functions.c.o: ../lib/alt_functions.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/zs/workspace/linux_program_test/linux_api/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building C object CMakeFiles/catch_t_sigs.dir/lib/alt_functions.c.o"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/catch_t_sigs.dir/lib/alt_functions.c.o   -c /home/zs/workspace/linux_program_test/linux_api/lib/alt_functions.c

CMakeFiles/catch_t_sigs.dir/lib/alt_functions.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/catch_t_sigs.dir/lib/alt_functions.c.i"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/zs/workspace/linux_program_test/linux_api/lib/alt_functions.c > CMakeFiles/catch_t_sigs.dir/lib/alt_functions.c.i

CMakeFiles/catch_t_sigs.dir/lib/alt_functions.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/catch_t_sigs.dir/lib/alt_functions.c.s"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/zs/workspace/linux_program_test/linux_api/lib/alt_functions.c -o CMakeFiles/catch_t_sigs.dir/lib/alt_functions.c.s

CMakeFiles/catch_t_sigs.dir/lib/alt_functions.c.o.requires:

.PHONY : CMakeFiles/catch_t_sigs.dir/lib/alt_functions.c.o.requires

CMakeFiles/catch_t_sigs.dir/lib/alt_functions.c.o.provides: CMakeFiles/catch_t_sigs.dir/lib/alt_functions.c.o.requires
	$(MAKE) -f CMakeFiles/catch_t_sigs.dir/build.make CMakeFiles/catch_t_sigs.dir/lib/alt_functions.c.o.provides.build
.PHONY : CMakeFiles/catch_t_sigs.dir/lib/alt_functions.c.o.provides

CMakeFiles/catch_t_sigs.dir/lib/alt_functions.c.o.provides.build: CMakeFiles/catch_t_sigs.dir/lib/alt_functions.c.o


CMakeFiles/catch_t_sigs.dir/lib/syscall_speed.c.o: CMakeFiles/catch_t_sigs.dir/flags.make
CMakeFiles/catch_t_sigs.dir/lib/syscall_speed.c.o: ../lib/syscall_speed.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/zs/workspace/linux_program_test/linux_api/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building C object CMakeFiles/catch_t_sigs.dir/lib/syscall_speed.c.o"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/catch_t_sigs.dir/lib/syscall_speed.c.o   -c /home/zs/workspace/linux_program_test/linux_api/lib/syscall_speed.c

CMakeFiles/catch_t_sigs.dir/lib/syscall_speed.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/catch_t_sigs.dir/lib/syscall_speed.c.i"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/zs/workspace/linux_program_test/linux_api/lib/syscall_speed.c > CMakeFiles/catch_t_sigs.dir/lib/syscall_speed.c.i

CMakeFiles/catch_t_sigs.dir/lib/syscall_speed.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/catch_t_sigs.dir/lib/syscall_speed.c.s"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/zs/workspace/linux_program_test/linux_api/lib/syscall_speed.c -o CMakeFiles/catch_t_sigs.dir/lib/syscall_speed.c.s

CMakeFiles/catch_t_sigs.dir/lib/syscall_speed.c.o.requires:

.PHONY : CMakeFiles/catch_t_sigs.dir/lib/syscall_speed.c.o.requires

CMakeFiles/catch_t_sigs.dir/lib/syscall_speed.c.o.provides: CMakeFiles/catch_t_sigs.dir/lib/syscall_speed.c.o.requires
	$(MAKE) -f CMakeFiles/catch_t_sigs.dir/build.make CMakeFiles/catch_t_sigs.dir/lib/syscall_speed.c.o.provides.build
.PHONY : CMakeFiles/catch_t_sigs.dir/lib/syscall_speed.c.o.provides

CMakeFiles/catch_t_sigs.dir/lib/syscall_speed.c.o.provides.build: CMakeFiles/catch_t_sigs.dir/lib/syscall_speed.c.o


CMakeFiles/catch_t_sigs.dir/signal/signal_functions.c.o: CMakeFiles/catch_t_sigs.dir/flags.make
CMakeFiles/catch_t_sigs.dir/signal/signal_functions.c.o: ../signal/signal_functions.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/zs/workspace/linux_program_test/linux_api/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building C object CMakeFiles/catch_t_sigs.dir/signal/signal_functions.c.o"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/catch_t_sigs.dir/signal/signal_functions.c.o   -c /home/zs/workspace/linux_program_test/linux_api/signal/signal_functions.c

CMakeFiles/catch_t_sigs.dir/signal/signal_functions.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/catch_t_sigs.dir/signal/signal_functions.c.i"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/zs/workspace/linux_program_test/linux_api/signal/signal_functions.c > CMakeFiles/catch_t_sigs.dir/signal/signal_functions.c.i

CMakeFiles/catch_t_sigs.dir/signal/signal_functions.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/catch_t_sigs.dir/signal/signal_functions.c.s"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/zs/workspace/linux_program_test/linux_api/signal/signal_functions.c -o CMakeFiles/catch_t_sigs.dir/signal/signal_functions.c.s

CMakeFiles/catch_t_sigs.dir/signal/signal_functions.c.o.requires:

.PHONY : CMakeFiles/catch_t_sigs.dir/signal/signal_functions.c.o.requires

CMakeFiles/catch_t_sigs.dir/signal/signal_functions.c.o.provides: CMakeFiles/catch_t_sigs.dir/signal/signal_functions.c.o.requires
	$(MAKE) -f CMakeFiles/catch_t_sigs.dir/build.make CMakeFiles/catch_t_sigs.dir/signal/signal_functions.c.o.provides.build
.PHONY : CMakeFiles/catch_t_sigs.dir/signal/signal_functions.c.o.provides

CMakeFiles/catch_t_sigs.dir/signal/signal_functions.c.o.provides.build: CMakeFiles/catch_t_sigs.dir/signal/signal_functions.c.o


# Object files for target catch_t_sigs
catch_t_sigs_OBJECTS = \
"CMakeFiles/catch_t_sigs.dir/signal/catch_t_sigs.c.o" \
"CMakeFiles/catch_t_sigs.dir/lib/error_functions.c.o" \
"CMakeFiles/catch_t_sigs.dir/lib/get_num.c.o" \
"CMakeFiles/catch_t_sigs.dir/lib/alt_functions.c.o" \
"CMakeFiles/catch_t_sigs.dir/lib/syscall_speed.c.o" \
"CMakeFiles/catch_t_sigs.dir/signal/signal_functions.c.o"

# External object files for target catch_t_sigs
catch_t_sigs_EXTERNAL_OBJECTS =

catch_t_sigs: CMakeFiles/catch_t_sigs.dir/signal/catch_t_sigs.c.o
catch_t_sigs: CMakeFiles/catch_t_sigs.dir/lib/error_functions.c.o
catch_t_sigs: CMakeFiles/catch_t_sigs.dir/lib/get_num.c.o
catch_t_sigs: CMakeFiles/catch_t_sigs.dir/lib/alt_functions.c.o
catch_t_sigs: CMakeFiles/catch_t_sigs.dir/lib/syscall_speed.c.o
catch_t_sigs: CMakeFiles/catch_t_sigs.dir/signal/signal_functions.c.o
catch_t_sigs: CMakeFiles/catch_t_sigs.dir/build.make
catch_t_sigs: CMakeFiles/catch_t_sigs.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/zs/workspace/linux_program_test/linux_api/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Linking C executable catch_t_sigs"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/catch_t_sigs.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/catch_t_sigs.dir/build: catch_t_sigs

.PHONY : CMakeFiles/catch_t_sigs.dir/build

CMakeFiles/catch_t_sigs.dir/requires: CMakeFiles/catch_t_sigs.dir/signal/catch_t_sigs.c.o.requires
CMakeFiles/catch_t_sigs.dir/requires: CMakeFiles/catch_t_sigs.dir/lib/error_functions.c.o.requires
CMakeFiles/catch_t_sigs.dir/requires: CMakeFiles/catch_t_sigs.dir/lib/get_num.c.o.requires
CMakeFiles/catch_t_sigs.dir/requires: CMakeFiles/catch_t_sigs.dir/lib/alt_functions.c.o.requires
CMakeFiles/catch_t_sigs.dir/requires: CMakeFiles/catch_t_sigs.dir/lib/syscall_speed.c.o.requires
CMakeFiles/catch_t_sigs.dir/requires: CMakeFiles/catch_t_sigs.dir/signal/signal_functions.c.o.requires

.PHONY : CMakeFiles/catch_t_sigs.dir/requires

CMakeFiles/catch_t_sigs.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/catch_t_sigs.dir/cmake_clean.cmake
.PHONY : CMakeFiles/catch_t_sigs.dir/clean

CMakeFiles/catch_t_sigs.dir/depend:
	cd /home/zs/workspace/linux_program_test/linux_api/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/zs/workspace/linux_program_test/linux_api /home/zs/workspace/linux_program_test/linux_api /home/zs/workspace/linux_program_test/linux_api/cmake-build-debug /home/zs/workspace/linux_program_test/linux_api/cmake-build-debug /home/zs/workspace/linux_program_test/linux_api/cmake-build-debug/CMakeFiles/catch_t_sigs.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/catch_t_sigs.dir/depend

