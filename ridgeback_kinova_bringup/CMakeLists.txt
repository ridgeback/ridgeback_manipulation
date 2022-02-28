cmake_minimum_required(VERSION 2.8.3)
project(ridgeback_kinova_bringup)

find_package(catkin REQUIRED)

catkin_package()

if (CATKIN_ENABLE_TESTING)
  find_package(roslaunch REQUIRED)
  roslaunch_add_file_check(launch/ridgeback_gen3_bringup.launch)
  roslaunch_add_file_check(launch/ridgeback_dual_gen3_bringup.launch)
endif()

install(DIRECTORY launch
  DESTINATION ${CATKIN_PACKAGE_SHARE_DESTINATION}
)
