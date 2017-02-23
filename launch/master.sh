#!/bin/bash

. /home/ubuntu/2017VisionCode/zebROS_ws/ROSJetsonMaster.sh
sudo chmod a+rw /dev/ttyACM0
if sudo mount /dev/disk/by-id/$(ls /dev/disk/by-id/ | grep 'SanDisk.*part1') /mnt/900_2; then
		sudo chmod a+rw /mnt/900_2/
		roslaunch controller_node controller_master.launch record:=true
	else
			roslaunch controller_node controller_master.launch
	fi

