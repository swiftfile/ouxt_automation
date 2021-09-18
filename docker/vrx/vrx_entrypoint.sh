#!/bin/bash
set -e

# unsetting ROS_DISTRO to silence ROS_DISTRO override warning
unset ROS_DISTRO
# setup ros1 environment
source "/opt/ros/$ROS1_DISTRO/setup.bash"

source "/vrx_ws/install/local_setup.bash"
roslaunch vrx_gazebo sandisland.launch gui:=false non_competition_mode:=true gps_enabled:=true camera_enabled:=true imu_enabled:=true lidar_enabled:=true &

# unsetting ROS_DISTRO to silence ROS_DISTRO override warning
unset ROS_DISTRO
# setup ros2 environment
source "/opt/ros/$ROS2_DISTRO/setup.bash"
source "/vrx_ws/install/local_setup.bash"

ros2 run ros1_bridge dynamic_bridge --bridge-all-topics