#!/bin/bash

#shell script to count number of words in files in current directory
#author: Hemali Jayswal
#

for FILE in $(ls)
do
	wc -l "${FILE}"
done

EOF

