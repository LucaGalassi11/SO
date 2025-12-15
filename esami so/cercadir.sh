#!/bin/bash

for name in usr/include/*; do
#prende qualsiasi nome di directory o file nel percorso specificato grazie a "*"
    if [[ -d ${name} && -r ${name} && \
    ${name} -nt usr/include/stdio]]; then
#-d ritorna true o false se si tratta di una directory o no. -r serve a capire se
#se si possiedono i permessi di lettura. -nt è usato per capire se il file è più nuovo
#rispetto a uno specificato(newer than). 
        echo "usr/include/${name}"
    fi

done
