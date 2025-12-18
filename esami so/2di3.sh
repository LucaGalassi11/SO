#!/bin/bash

while read uno due tre cuattro; do

	if [[ ${tre} != "" ]]; then 
		car=${tre:1:1}
	if [[ ${car} != "" ]]; then 
		echo "${car}"
	fi
	fi
done < merda.txt
