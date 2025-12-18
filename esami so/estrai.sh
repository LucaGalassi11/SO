#!/bin/bash

IFS=', \n'
somma=0

while read a b c; do
	(( somma=${somma}+${b} ))
	echo "${a},${c}"
done < merda.txt 
echo ${somma}
