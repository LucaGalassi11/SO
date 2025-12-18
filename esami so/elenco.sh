#!/bin/bash

dir=0
file=0

for name in `ls ./`; do
	if [[ -d ${name} ]]; then 
		(( dir=${dir}+${#name} ))
	else 
		(( file=${file}+1 ))
	fi
done
echo "dir=${dir}"
echo "file=${file}"
