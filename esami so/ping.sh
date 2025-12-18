#!/bin/bash

touch ping.txt
./pong.sh &
	while true; do
		if [[ -f ping.txt ]]; then 
		echo "ping"
		rm -f ping.txt
		touch pong.txt
		fi
	sleep 2
	done 

