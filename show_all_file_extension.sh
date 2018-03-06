#!/bin/bash

reg_fname=".*\/(.*)"
reg_ext="[^.].*\.([^.]+$)"

for file in `\find $1 -type f -not -regex ".*\/\..*"`; do
    if [[ $file =~ $reg_fname ]]
    then
	if [[ ${BASH_REMATCH[1]} =~ $reg_ext ]]
	then
	    echo ${BASH_REMATCH[1]}
	fi
    fi
done
