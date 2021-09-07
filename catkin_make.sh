#!/usr/bin/env bash

source /opt/ros/noetic/setup.bash

catkin_make -C /home/dualarm/detectron2/catkin_ws

source /home/dualarm/detectron2/environment.sh
