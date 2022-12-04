cmake_minimum_required (VERSION 2.8)
project(B_Plus_Tree)

set(CMAKE_CXX_STANDARD 14)

if(NOT CMAKE_BUILD_TYPE)
    set(CMAKE_BUILD_TYPE Release)
endif()

set(CMAKE_CXX_FLAGS_RELEASE -Ofast)
set(CMAKE_CXX_FLAGS "${CMAKE_C_FLAGS} -O3 -Wall")
set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -O3 -Wall")

add_executable(main_latency main_latency.cc)
add_executable(main_workload main_workload.cc)
add_executable(main_goodput main_goodput.cc)
