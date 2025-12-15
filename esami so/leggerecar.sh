#!/bin/bash

exec {FD}</usr/include/stdio.h

    if (($? == 0)); then
        NUM=0
        while read -u ${FD} -N 1 -r C; do
#-u serve a leggere dal file specificato precedentemente, -N 1 serve per leggere
#un carattere alla volta mentre -r C disabilita l'interpretazione dei \ e C contiene il carattere letto 
            ((NUM=${NUM}+1))
        done 
        exec ${FD}>&-
        echo ${NUM}
    fi










