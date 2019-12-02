#!/usr/bin/env bash
if [ $# == 1 ]
then
  echo "Creating Directory <" $PWD"/"$1 ">"
  mkdir "$1"
  cd "$1"

  echo "Copying Dual Kinova Moveit Config"
  cp -r $(catkin_find ridgeback_dual_7_axis_kinova_moveit_config)/. .
  echo "Updating Package"
  grep -rli 'ridgeback_dual_7_axis_kinova_moveit_config' * | xargs -i@ sed -i 's/ridgeback_dual_7_axis_kinova_moveit_config/'$1'/g' @
  echo "Done"

else
  echo "USAGE: customize_moveit.sh [new_moveit_package_name]"
fi
