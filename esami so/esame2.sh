#!/bin/bash

if (("$#" == "0")); then
    echo "troppi pochi argomenti"
exit 1

if (("$#" > "9")); then 
    echo "troppi argomenti"


NUM=1
CONTAPARI=0
CONTADISPARI=0

while ((${NUM} < "$#"));
do

RIGHE=`wc -l ${NUM}`
RIGHE=${RIGHE%% *}

if ((${NUM}%2==0)); then 
   ((CONTAPARI=${CONTAPARI}+${RIGHE}))
else 
((CONTADISPARI=${CONTADISPARI}+${RIGHE}))
fi

((NUM=${NUM}+1))

done 

echo ${CONTAPARI}
echo ${CONTADISPARI} 1>&2

exit 0