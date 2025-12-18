#!/bin/bash

if [[ $# == 0 ]]; then echo "trorppi pochi argomenti"; exit 1; fi
if [[ ! -r $1 ]]; then echo "non si legge il file coglione"; exit 1; fi

OUT=""

while read PRIMA SECONDA CIOIA; do 
	if [[ -n ${SECONDA} ]]; then 
		OUT=${OUT}${SECONDA}
	fi
done < $1
echo "OUT=${OUT}" 
