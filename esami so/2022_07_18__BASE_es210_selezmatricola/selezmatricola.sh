#!/bin/bash

cat lista.txt | grep -B 1 --no-group-separator OPERATIVI | grep -v OPERATIVI | while read MATRICOLA NOME COGNOME; do echo ${MATRICOLA; done
