#!/bin/bash


if [[ $# == 0 ]]; then 
	echo "non ci sono argomenti"
exit 1
fi

COUNT=0
VAR=$1
	for (( COUNT=0; COUNT<${#VAR}; COUNT=${COUNT}+1 )); do 
		echo ${VAR:${COUNT}:1}
	done | sort | uniq -c | while read A B; do echo ${B} ${A} done   
