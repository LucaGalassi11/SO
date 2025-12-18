#!/bin/bash

VALPREC=""
COUNTER=0

	while read NOME COGNOME MULTA DATA; do
		if [[ -z ${NOME} || -z ${COGNOME} || -z ${MULTA} || -z ${DATA} ]]; then
			echo "ci sono degli argomenti vuoti"
		exit 1
		fi
		
		if [[ "${VALPREC}" == "" ]]; then 
			VALPREC=${MULTA}
			COUNTER=1
		else  
			if [[ ${VALPREC} == ${MULTA} ]]; then
			((COUNTER=${COUNTER}+1))
			else 
				echo "${VALPREC} ${COUNTER}"

				COUNTER=1
				VALPREC=${MULTA}
			fi
		fi
done

if [[ ${VALPREC} != "" ]]; then 
	echo ${VALPREC} ${COUNTER}
fi
exit 0
