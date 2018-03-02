cmake_minimum_required(VERSION 2.8.3)
project(ridgeback_7_axis_kinova_moveit_config)

find_package(catkin REQUIRED)

catkin_package()

install(DIRECTORY launch DESTINATION ${CATKIN_PACKAGE_SHARE_DESTINATION}
  PATTERN "setup_assistant.launch" EXCLUDE)
install(DIRECTORY config DESTINATION ${CATKIN_PACKAGE_SHARE_DESTINATION})

if (CATKIN_ENABLE_TESTING)
  find_package(roslaunch REQUIRED)
  roslaunch_add_file_check(launch/move_group.launch)
  roslaunch_add_file_check(launch/ridgeback_kinova_moveit_planning_execution.launch)
endif()
