# Find LibMultiSense
#
# You can pass LIBMULTISENSE_DIR to set the directory where libmultisense is
# installed.  i.e., the directory that contains include/MultiSense and lib/
#
# Sets LIBMULTISENSE_FOUND, LIBMULTISENSE_INCLUDE_DIRS, LIBMULTISENSE_LIBRARIES
#
# The cache variables are LIBMULTISENSE_INCLUDE_DIR AND LIBMULTISENSE_LIBRARY.
#

if(LIBMULTISENSE_DIR)
  set(_include_dir_hint "${LIBMULTISENSE_DIR}/include/MultiSense")
  set(_lib_dir_hint "${LIBMULTISENSE_DIR}/lib")
endif()

find_path(LIBMULTISENSE_INCLUDE_DIR MultiSenseChannel.hh HINTS ${_include_dir_hint} PATH_SUFFIXES MultiSense DOC "Path to the MultiSense include directory")
find_library(LIBMULTISENSE_LIBRARY MultiSense HINTS ${_lib_dir_hint} DOC "The MultiSense library")

set(LIBMULTISENSE_INCLUDE_DIRS ${LIBMULTISENSE_INCLUDE_DIR})
set(LIBMULTISENSE_LIBRARIES ${LIBMULTISENSE_LIBRARY})

include(FindPackageHandleStandardArgs)
FIND_PACKAGE_HANDLE_STANDARD_ARGS(LibMultiSense DEFAULT_MSG LIBMULTISENSE_INCLUDE_DIR LIBMULTISENSE_LIBRARY)

mark_as_advanced(LIBMULTISENSE_INCLUDE_DIR)
mark_as_advanced(LIBMULTISENSE_LIBRARY)
