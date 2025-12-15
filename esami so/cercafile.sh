#!/bin/bash

for car in {c..g}; do 
#fa si che vengano scorsi tutti i caratteri da c fino a g
    for name in usr/include/?${car}*; do
#il punto interrogativo serve a delineare un carattere qualsiasi prima di quello ricercato 
#esempio se volessi cercare solo il secondo carattere del nome di un file metto solo un ?
#se invece volessi prendere il terzo dovrei mettere ??
        if [[ -e ${name} && (${#name} -lt 18 || ${#name} -gt 23)]]; then
            echo ${name}
#la condizione -e si assicura che il file esista. tra le parentesi tonde viene eseguita
#la condizione "il nome del file deve essere compreso tra i 18 e i 23 caratteri" 
#-lt(less than) -gt(great than) # invece serve a ottenere il numero di caatteri
        fi
    done
done