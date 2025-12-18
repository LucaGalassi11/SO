#!/bin/bash

if [[ $# != 1 ]]; then echo "serve un argomento" exit 1 ; fi
if [[ ! -e $1 ]]; then echo "file non trovato" exit 1 ; fi

./invertiric.sh
