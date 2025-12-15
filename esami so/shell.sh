#!/bin/bash

grep '*' usr/include/stdio.h
#grep si usa per ricercare e stampare una riga contenente il carattere '*'
grep -v '*' usr/include/stdio.h
#in questo caso il stampa solo le righe che non contengono '*'
