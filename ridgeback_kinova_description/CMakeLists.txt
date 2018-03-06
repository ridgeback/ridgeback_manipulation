cmake_minimum_required(VERSION 2.8.3)
project(ridgeback_kinova_description)

find_package(catkin REQUIRED COMPONENTS
  kinova_description
  ridgeback_description
)

catkin_package()

include_directories(
  ${catkin_INCLUDE_DIRS}
)

install(DIRECTORY urdf
  DESTINATION ${CATKIN_PACKAGE_SHARE_DESTINATION}
)
