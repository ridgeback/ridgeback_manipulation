cmake_minimum_required(VERSION 2.8.3)
project(ridgeback_manipulation)

find_package(catkin REQUIRED COMPONENTS
  ridgeback_kinova_bringup
  ridgeback_kinova_description
)

catkin_package()

include_directories(
  ${catkin_INCLUDE_DIRS}
)

install(DIRECTORY meshes urdf
  DESTINATION ${CATKIN_PACKAGE_SHARE_DESTINATION}
)

install(DIRECTORY scripts
  DESTINATION ${CATKIN_PACKAGE_BIN_DESTINATION}
)
