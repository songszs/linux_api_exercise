cmake_minimum_required(VERSION 3.8)
project(linux_api)

set(CMAKE_C_STANDARD 99)

#set(SOURCE_FILES lib/tlpi_hdr.h lib/error_functions.h lib/error_functions.c lib/ename.c.inc lib/get_num.c lib/get_num.h lib/alt_functions.h lib/alt_functions.c lib/syscall_speed.c file_permission/file_perms.c file_permission/file_perms.h file_permission/file_perms_main.c signal/signal.c)

set(SOURCE_FILES lib/tlpi_hdr.h lib/error_functions.h lib/error_functions.c lib/ename.c.inc lib/get_num.c lib/get_num.h lib/alt_functions.h lib/alt_functions.c lib/syscall_speed.c signal/signal_functions.h
        signal/signal_functions.c)

add_executable(necho_args process/necho_args.c)

add_executable(signal_sender signal/signal_sender.c
        ${SCE_FILES})

add_executable(signal_receiver signal/signal_receiver.c
        ${SOURCE_FILES})

add_executable(signalqueue signal/t_sigquequ.c
        ${SOURCE_FILES})
add_executable(catch_t_sigs signal/catch_t_sigs.c
        ${SOURCE_FILES} )
add_executable(catch_sigchld signal/catch_sigchld.c
        ${SOURCE_FILES} )

add_executable(fork process/fork.c
        ${SOURCE_FILES})

add_executable(thread thread/pthread_create.c
        ${SOURCE_FILES})

add_executable(mutex_lock thread/mutex_lock.c
        ${SOURCE_FILES})
add_executable(product_consumer_mutex thread/producter_consumer_mutex.c
        ${SOURCE_FILES})
add_executable(product_consumer_cond thread/producter_consumer_cond.c
        ${SOURCE_FILES})
find_package(Threads REQUIRED)
target_link_libraries(thread Threads::Threads)
target_link_libraries(mutex_lock Threads::Threads)
target_link_libraries(product_consumer_mutex Threads::Threads)
target_link_libraries(product_consumer_cond Threads::Threads)