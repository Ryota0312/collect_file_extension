#!/bin/bash

result=`./show_all_file_extension.sh $1`

echo -e "${result}" | sort | uniq -c | sort -nr

nfile=`echo -e "${result}" | wc -l`
echo "$nfile files"
