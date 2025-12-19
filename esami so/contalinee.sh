#!/bin/bash

if [[ $# == 0 ]]; then echo "troppi pochi argomenti dio bestia marina"; exit 1; fi
if [[ ! -r $1 ]]; then echo "non si legge il file dio merda"; exit 1; fi

num=1
porcodio="$1"

while read -r linea; do 
	(( num=${num}+1 ))
done < ${porcodio}
echo "num linee=${num}"

