cmake_minimum_required(VERSION 2.8.3)
project(ridgeback_iiwa_description)

find_package(catkin REQUIRED COMPONENTS)

catkin_package()

include_directories(
  ${catkin_INCLUDE_DIRS}
)

install(DIRECTORY urdf
  DESTINATION ${CATKIN_PACKAGE_SHARE_DESTINATION}
)

install(PROGRAMS
  scripts/setup_ridgeback_iiwa_14_envar
  scripts/setup_ridgeback_iiwa_7_envar
  DESTINATION ${CATKIN_PACKAGE_BIN_DESTINATION}
)
