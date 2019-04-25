cmake_minimum_required(VERSION 2.8.3)
project(ridgeback_hc10_bringup)

find_package(catkin REQUIRED COMPONENTS)

catkin_package()

include_directories(
  ${catkin_INCLUDE_DIRS}
)

if (CATKIN_ENABLE_TESTING)
  find_package(roslaunch REQUIRED)
  roslaunch_add_file_check(launch/ridgeback_hc10_bringup.launch)
endif()

install(DIRECTORY launch
  DESTINATION ${CATKIN_PACKAGE_SHARE_DESTINATION}
)

install(DIRECTORY scripts
  DESTINATION ${CATKIN_PACKAGE_BIN_DESTINATION}
)
