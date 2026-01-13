cmake_minimum_required(VERSION 3.22.1)
project(jack LANGUAGES C CXX)

# Used for creating a ROS 2 package
option(USE_AMENT "Use ament build system" OFF)

add_subdirectory(jack_core)
add_subdirectory(examples)
