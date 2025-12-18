#!/bin/bash

if [[ $# == 0 ]]; then 
	echo "pochi argomenti"
exit 1
fi

COUNT=$1
VAR=0
	for (( VAR=0; VAR<${#COUNT}; VAR=${VAR}+1 )); do 
		echo ${COUNT:${VAR}:1}
	done | sort | uniq -c
