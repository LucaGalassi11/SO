#!/bin/bash

roba="$1"

if [[ ! -d "${roba}" || "$#" == 0 ]]; then echo ""; exit 1; fi

filemax=$(find "$PWD/${roba}" -type f -readable -exec wc -l {} + | sort -n | tail -1)
