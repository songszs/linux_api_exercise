cmake_minimum_required(VERSION 3.8)
project(io)

set(CMAKE_C_STANDARD 99)

set(SOURCE_FILES file/main.c)
add_executable(io ${SOURCE_FILES})