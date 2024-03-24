#!/bin/bash

#
#shell script to print numbers divisible by 2 and 5 and not by 10
#

for i in {1..50};
do	
	if ([ `expr $i % 2` == 0 ] || [ `expr $i % 5` == 0 ]) && [ `expr $i % 10` != 0 ];
	then
		echo $i
	fi
done

