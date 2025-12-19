#!/bin/bash

roba="$1"

if [[ ! -d "${roba}" || "${roba}" == 0 ]]; then echo ""; exit 1; fi

find "${roba}" -type f | wc -l  
