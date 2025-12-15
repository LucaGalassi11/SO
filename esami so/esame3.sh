#!/bin/bash 

cat esame2.txt

while read matr voto1; do 
    OUT=`grep ${matr} esame2.txt`
    if[[${OUT}==""]]; 
        then 
        echo $voto1 $matr
    fi
done < esame1.txt
