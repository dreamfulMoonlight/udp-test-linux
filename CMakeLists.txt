cmake_minimum_required(VERSION 3.15)
project(udp-test VERSION 1.0.0 LANGUAGES CXX)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

option(BUILD_SHARED "whether to build dynamics library" ON)

add_subdirectory(src)
add_subdirectory(examples)