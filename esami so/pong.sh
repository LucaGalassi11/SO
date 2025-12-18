#!/bin/bash

while true; do
	if [[ -f pong.txt ]]; then
	echo pong
	rm -f pong.txt
	touch ping.txt
	fi
sleep 2 
done 
