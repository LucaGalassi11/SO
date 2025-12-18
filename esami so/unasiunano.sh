#!/bin/bash

#if [[ $# == 0 ]]; then echo "pochi argomenti"; exit 1; fi
#if [[ ! -r $1 ]]; then echo "file inesistente"; exit 1; fi 

LEGGI=0

	while read RIGA; do
		if [[ ${LEGGI} == 0 ]]; then echo ""; LEGGI=1
			else 
				echo ${RIGA}
				LEGGI=0
		fi
	done < merda.txt
