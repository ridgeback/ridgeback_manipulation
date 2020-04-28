cmake_minimum_required(VERSION 2.8.3)
project(ridgeback_kinova_description)

find_package(catkin REQUIRED COMPONENTS)

catkin_package()

include_directories(
  ${catkin_INCLUDE_DIRS}
)

install(DIRECTORY urdf
  DESTINATION ${CATKIN_PACKAGE_SHARE_DESTINATION}
)

install(PROGRAMS
  scripts/setup_ridgeback_dual_j2n6s200_envar
  scripts/setup_ridgeback_dual_j2n6s300_envar
  scripts/setup_ridgeback_dual_j2n7s300_envar
  scripts/setup_ridgeback_dual_j2s6s300_envar
  scripts/setup_ridgeback_dual_j2s7s300_envar
  scripts/setup_ridgeback_dual_m1n6s200_envar
  scripts/setup_ridgeback_dual_m1n6s300_envar
  scripts/setup_ridgeback_j2n6s200_envar
  scripts/setup_ridgeback_j2n6s300_envar
  scripts/setup_ridgeback_j2n7s300_envar
  scripts/setup_ridgeback_j2s6s300_envar
  scripts/setup_ridgeback_j2s7s300_envar
  scripts/setup_ridgeback_m1n6s200_envar
  scripts/setup_ridgeback_m1n6s300_envar
  scripts/setup_ridgeback_dual_gen3_envar
  scripts/setup_ridgeback_dual_gen3_robotiq_2f_85_envar
  scripts/setup_ridgeback_dual_gen3_robotiq_2f_140_envar
  scripts/setup_ridgeback_gen3_envar
  scripts/setup_ridgeback_gen3_robotiq_2f_85_envar
  scripts/setup_ridgeback_gen3_robotiq_2f_140_envar
  DESTINATION ${CATKIN_PACKAGE_BIN_DESTINATION}
)
