#!/bin/bash 

NUM=0

for ((ARGS=1; ARGS<=$#; ARGS=${ARGS}+1)); do
    ((NUM=${ARGS}+${!ARGS}*${!ARGS}));
done

for ((ARGS=1; ARGS<=$#; ARGS=${ARGS}+1)); do
    ((NUM=${NUM}-${ARGS}))
done 

echo ${NUM}