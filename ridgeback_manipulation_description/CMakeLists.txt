cmake_minimum_required(VERSION 2.8.3)
project(ridgeback_manipulation_description)

find_package(catkin REQUIRED COMPONENTS)

catkin_package()

include_directories(
  ${catkin_INCLUDE_DIRS}
)

install(DIRECTORY meshes urdf
  DESTINATION ${CATKIN_PACKAGE_SHARE_DESTINATION}
)

install(PROGRAMS
  scripts/launch_delay.sh
  DESTINATION ${CATKIN_PACKAGE_BIN_DESTINATION}
)
