#!/bin/bash 

STR=""
ARGS=0

for((ARGS=2; ARGS<=$#; ARGS=${ARGS}+2)); do
    STR="${STR}${!ARGS}";
done

for((ARGS=1; ARGS<=$#; ARGS=${ARGS}+2)); do 
    STR="${STR}${!ARGS}";
done 

echo ${STR}
