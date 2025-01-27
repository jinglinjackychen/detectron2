#!/usr/bin/env bash

# source catkin workspace 
source /opt/ros/noetic/setup.bash
source /home/dualarm/detectron2/catkin_ws/devel/setup.bash

if [ "$1" ]; then
    echo "ROS MASRER $1"
    export ROS_MASTER_URI=http://$1:11311
else
    echo "ROS MASRER 127.0.0.1"
    export ROS_MASTER_URI=http://127.0.0.1:11311
fi

if [ "$2" ]; then
    echo "ROS IP $2"
    export ROS_IP=$2
else
    echo "ROS IP 127.0.0.1"
    export ROS_IP=127.0.0.1
fi


# source cv bridge python3 workspace (Need to extend your environment.)
# source catkin_workspace/install/setup.bash --extend 
