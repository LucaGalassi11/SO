#!/bin/bash

exec {FD}</usr/include/stdio.h
#usa un file descriptor per aprire in lettura il file
if (($? == 0)); then 
#controlla se il file descriptor apre corretttamente il file
while read -u ${FD} A B C D; do
    echo "${C}"
done 
#stampa la terza lettera del file indicato dal file descrpitor con -u.
exec ${FD}>&-
#chiusura file descriptor tramite >&-
fi 

