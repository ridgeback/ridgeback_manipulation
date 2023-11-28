#!/usr/bin/env bash
if [ $# == 1 ]
then
  echo "Creating Directory <" $PWD"/"$1 ">"
  mkdir "$1"
  cd "$1"

  echo "Copying Gen3 Moveit Config"
  cp -r $(catkin_find ridgeback_gen3_robotiq_2f_85_moveit_config)/. .
  echo "Updating Package"
  grep -rli 'ridgeback_gen3_robotiq_2f_85_moveit_config' * | xargs -i@ sed -i 's/ridgeback_gen3_robotiq_2f_85_moveit_config/'$1'/g' @
  echo "Done"

else
  echo "USAGE: customize_moveit.sh [new_moveit_package_name]"
fi
