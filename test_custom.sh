#!/bin/bash

RAZER_BLACKWIDOW_CHROMA_DEVICES=`ls /sys/bus/hid/devices/ | grep "1532:0203"`
for DEV in $RAZER_BLACKWIDOW_CHROMA_DEVICES
do 
	if [ -d "/sys/bus/hid/devices/$DEV/input" ]; then
		INPUT_DEVS=`ls /sys/bus/hid/devices/$DEV/input`
		for INPUT_DEV in $INPUT_DEVS
		do
			MOUSE=`ls /sys/bus/hid/devices/$DEV/input/$INPUT_DEV/ | grep "mouse"`
			if [ $MOUSE ]; then
				#echo "Found Razer LED Device : $DEV"
				DEVPATH=/sys/bus/hid/devices/$DEV
				while [ /bin/true ];
				do
					for I in 0 1 2 3 4 5
					do
						echo -n -e "\x0$I\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0" > $DEVPATH/set_key_row
						echo -n "1" > $DEVPATH/mode_custom
					done
					for I in 0 1 2 3 4 5
					do
						echo -n -e "\x0$I\x0\xff\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0" > $DEVPATH/set_key_row
						echo -n "1" > $DEVPATH/mode_custom
					done
					for I in 0 1 2 3 4 5
					do
						echo -n -e "\x0$I\x0\x0\x0\x0\xff\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0" > $DEVPATH/set_key_row
						echo -n "1" > $DEVPATH/mode_custom
					done
					for I in 0 1 2 3 4 5
					do
						echo -n -e "\x0$I\x0\x0\x0\x0\x0\x0\x0\xff\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0" > $DEVPATH/set_key_row
						echo -n "1" > $DEVPATH/mode_custom
					done
					for I in 0 1 2 3 4 5
					do
						echo -n -e "\x0$I\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\xff\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0" > $DEVPATH/set_key_row
						echo -n "1" > $DEVPATH/mode_custom
					done
					for I in 0 1 2 3 4 5
					do
						echo -n -e "\x0$I\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\xff\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0" > $DEVPATH/set_key_row
						echo -n "1" > $DEVPATH/mode_custom
					done
					for I in 0 1 2 3 4 5
					do
						echo -n -e "\x0$I\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\xff\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0" > $DEVPATH/set_key_row
						echo -n "1" > $DEVPATH/mode_custom
					done
					for I in 0 1 2 3 4 5
					do
						echo -n -e "\x0$I\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\xff\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0" > $DEVPATH/set_key_row
						echo -n "1" > $DEVPATH/mode_custom
					done
					for I in 0 1 2 3 4 5
					do
						echo -n -e "\x0$I\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\xff\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0" > $DEVPATH/set_key_row
						echo -n "1" > $DEVPATH/mode_custom
					done
					for I in 0 1 2 3 4 5
					do
						echo -n -e "\x0$I\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\xff\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0" > $DEVPATH/set_key_row
						echo -n "1" > $DEVPATH/mode_custom
					done
					for I in 0 1 2 3 4 5
					do
						echo -n -e "\x0$I\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\xff\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0" > $DEVPATH/set_key_row
						echo -n "1" > $DEVPATH/mode_custom
					done
					for I in 0 1 2 3 4 5
					do
						echo -n -e "\x0$I\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\xff\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0" > $DEVPATH/set_key_row
						echo -n "1" > $DEVPATH/mode_custom
					done
					for I in 0 1 2 3 4 5
					do
						echo -n -e "\x0$I\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\xff\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0" > $DEVPATH/set_key_row
						echo -n "1" > $DEVPATH/mode_custom
					done
					for I in 0 1 2 3 4 5
					do
						echo -n -e "\x0$I\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\xff\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0" > $DEVPATH/set_key_row
						echo -n "1" > $DEVPATH/mode_custom
					done
					for I in 0 1 2 3 4 5
					do
						echo -n -e "\x0$I\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\xff\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0" > $DEVPATH/set_key_row
						echo -n "1" > $DEVPATH/mode_custom
					done
					for I in 0 1 2 3 4 5
					do
						echo -n -e "\x0$I\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\xff\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0" > $DEVPATH/set_key_row
						echo -n "1" > $DEVPATH/mode_custom
					done
					for I in 0 1 2 3 4 5
					do
						echo -n -e "\x0$I\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\xff\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0" > $DEVPATH/set_key_row
						echo -n "1" > $DEVPATH/mode_custom
					done
					for I in 0 1 2 3 4 5
					do
						echo -n -e "\x0$I\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\xff\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0" > $DEVPATH/set_key_row
						echo -n "1" > $DEVPATH/mode_custom
					done
					for I in 0 1 2 3 4 5
					do
						echo -n -e "\x0$I\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\xff\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0" > $DEVPATH/set_key_row
						echo -n "1" > $DEVPATH/mode_custom
					done
					for I in 0 1 2 3 4 5
					do
						echo -n -e "\x0$I\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\xff\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0" > $DEVPATH/set_key_row
						echo -n "1" > $DEVPATH/mode_custom
					done
					for I in 0 1 2 3 4 5
					do
						echo -n -e "\x0$I\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\xff\x0\x0\x0\x0\x0\x0\x0" > $DEVPATH/set_key_row
						echo -n "1" > $DEVPATH/mode_custom
					done
					for I in 0 1 2 3 4 5
					do
						echo -n -e "\x0$I\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\xff\x0\x0\x0\x0" > $DEVPATH/set_key_row
						echo -n "1" > $DEVPATH/mode_custom
					done
					for I in 0 1 2 3 4 5
					do
						echo -n -e "\x0$I\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\x0\xff\x0" > $DEVPATH/set_key_row
						echo -n "1" > $DEVPATH/mode_custom
					done
				done
			fi
		done
	fi
done

