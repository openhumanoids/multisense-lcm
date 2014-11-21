cmake_minimum_required(VERSION 2.6.0)

# pull in the pods macros. See cmake/pods.cmake for documentation
include(cmake/pods.cmake)
list(APPEND CMAKE_MODULE_PATH "${CMAKE_SOURCE_DIR}/cmake/modules")
set(CMAKE_PREFIX_PATH "${CMAKE_INSTALL_PREFIX}")

# automatically build LCM types.  This also defines a number of CMake
# variables, see cmake/lcmtypes.cmake for details
set(POD_NAME driver-lcm)
set(PROJECT_NAME multisense)
include(cmake/lcmtypes.cmake)
lcmtypes_build()

add_subdirectory(src)
