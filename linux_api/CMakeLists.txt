cmake_minimum_required(VERSION 3.8)
project(linux_api)

set(CMAKE_C_STANDARD 99)

set(SOURCE_FILES file_api/copy.c lib/tlpi_hdr.h lib/error_functions.h lib/error_functions.c lib/ename.c.inc lib/get_num.c lib/get_num.h lib/alt_functions.h lib/alt_functions.c lib/syscall_speed.c)
add_executable(linux_api ${SOURCE_FILES})