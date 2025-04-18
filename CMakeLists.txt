cmake_minimum_required(VERSION 3.22.1)
project(jack LANGUAGES C CXX)

option(USE_AMENT "Use ament build system" ON)

add_subdirectory(jack_core)
add_subdirectory(examples)
