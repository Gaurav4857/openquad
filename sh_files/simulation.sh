#!/usr/bin/env bash
# do chmod a+x filename.sh for all the files in this as well as this file

source ~/.bashrc

printf "Launching mavros , px4 , gazebo , Running QGround Control\n"
xterm /home/tahseer/catkin_ws/src/openquad/sh_files/QGroundControl.sh &
xterm /home/tahseer/catkin_ws/src/openquad/sh_files/mavros.sh &
xterm /home/tahseer/catkin_ws/src/openquad/sh_files/px4.sh &
xterm /home/tahseer/catkin_ws/src/openquad/sh_files/gazebo.sh 

printf "\nKilling gazebo client and server\n"
/home/tahseer/catkin_ws/src/openquad/sh_files/kill.sh &