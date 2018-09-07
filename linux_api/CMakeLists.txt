cmake_minimum_required(VERSION 3.8)
project(linux_api)

set(CMAKE_C_STANDARD 99)

#set(SOURCE_FILES lib/tlpi_hdr.h lib/error_functions.h lib/error_functions.c lib/ename.c.inc lib/get_num.c lib/get_num.h lib/alt_functions.h lib/alt_functions.c lib/syscall_speed.c file_permission/file_perms.c file_permission/file_perms.h file_permission/file_perms_main.c signal/signal.c)

set(SOURCE_FILES lib/tlpi_hdr.h lib/error_functions.h lib/error_functions.c lib/ename.c.inc lib/get_num.c lib/get_num.h lib/alt_functions.h lib/alt_functions.c lib/syscall_speed.c signal/signal_functions.h
        signal/signal_functions.c)

add_executable(necho_args process/necho_args.c)

add_executable(signal_sender signal/signal_sender.c
        ${SOURCE_FILES})

add_executable(signal_receiver signal/signal_receiver.c
        ${SOURCE_FILES})

add_executable(signalqueue signal/t_sigquequ.c
        ${SOURCE_FILES})
add_executable(catch_t_sigs signal/catch_t_sigs.c
        ${SOURCE_FILES})