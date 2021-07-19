#!/bin/sh

# Application setup:
# Where am I
# pwd=./RobotND-Where-Am-I

xterm -e " source devel/setup.bash;roslaunch my_robot world.launch " &

sleep 10
xterm -e " source devel/setup.bash;roslaunch my_robot amcl.launch " &

sleep 30
xterm -e " source devel/setup.bash;rosrun teleop_twist_keyboard teleop_twist_keyboard.py "

