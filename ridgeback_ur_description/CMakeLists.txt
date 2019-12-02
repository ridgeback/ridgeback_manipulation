cmake_minimum_required(VERSION 2.8.3)
project(ridgeback_ur_description)

find_package(catkin REQUIRED COMPONENTS)

catkin_package()

include_directories(
  ${catkin_INCLUDE_DIRS}
)

install(DIRECTORY urdf
  DESTINATION ${CATKIN_PACKAGE_SHARE_DESTINATION}
)

install(PROGRAMS
  scripts/setup_ridgeback_dual_ur10_e_envar
  scripts/setup_ridgeback_dual_ur10_envar
  scripts/setup_ridgeback_dual_ur5_e_envar
  scripts/setup_ridgeback_dual_ur5_envar
  scripts/setup_ridgeback_ur10_e_envar
  scripts/setup_ridgeback_ur10_envar
  scripts/setup_ridgeback_ur5_e_envar
  scripts/setup_ridgeback_ur5_envar
  DESTINATION ${CATKIN_PACKAGE_BIN_DESTINATION}
)
