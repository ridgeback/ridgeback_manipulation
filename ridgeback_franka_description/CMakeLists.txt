cmake_minimum_required(VERSION 2.8.3)
project(ridgeback_franka_description)
find_package(catkin REQUIRED)

catkin_package()

include_directories()

install(DIRECTORY urdf
  DESTINATION ${CATKIN_PACKAGE_SHARE_DESTINATION}
)
install(PROGRAMS
  scripts/setup_ridgeback_dual_panda_envar
  scripts/setup_ridgeback_dual_panda_hand_envar
  scripts/setup_ridgeback_panda_envar
  scripts/setup_ridgeback_panda_hand_envar
  DESTINATION ${CATKIN_PACKAGE_BIN_DESTINATION}
)
