#!/bin/bash
var="$1"

if [[ $# == 0 ]]; then echo ""; exit 1; fi
if [[ ! -e ${var} ]]; then echo "inesistente"; exit 1; fi
if [[ -f ${var} ]]; then echo "FILE"; else echo "NON FILE"; exit 1; fi 
