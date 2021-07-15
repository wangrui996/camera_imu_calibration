# - Config file for the FooBar package
# It defines the following variables
#  FOOBAR_INCLUDE_DIRS - include directories for FooBar
#  FOOBAR_LIBRARIES    - libraries to link against
#  FOOBAR_EXECUTABLE   - the bar executable
 
# Compute paths
get_filename_component(SELF_DIR "${CMAKE_CURRENT_LIST_FILE}" PATH)
set(orocos_kdl_INCLUDE_DIRS "/usr/include/eigen3;/opt/ros/hydro/include")

if(NOT TARGET orocos-kdl)
  include("${SELF_DIR}/OrocosKDLTargets.cmake")
endif()

set(orocos_kdl_LIBRARIES orocos-kdl)
