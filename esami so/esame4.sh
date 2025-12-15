#!/bin/bash

NOMEFILE=`ls`
for nome1 in ${NOMEFILE}; do
    for nome2 in ${NOMEFILE}; do 
        for nome3 in ${NOMEFILE}; do 
            echo "${nome1} ${nome2} ${nome3}"
            echo \(${nome1} ${nome2} ${nome3}\)"
        done;
    done;
done;

