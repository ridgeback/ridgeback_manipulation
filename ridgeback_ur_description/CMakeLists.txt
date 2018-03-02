cmake_minimum_required(VERSION 2.8.3)
project(ridgeback_ur_description)

find_package(catkin REQUIRED COMPONENTS
  ur_description
)

catkin_package()

include_directories(
  ${catkin_INCLUDE_DIRS}
)
