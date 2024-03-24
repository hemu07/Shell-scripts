#!/usr/bin/env bash
#print number is odd or even
#if and for loop syntax

for i in {1..10};
do
	if [ `expr $i % 2` == 0 ];
	then
		echo "$i is even number"
	else
		echo "$i is odd number"
	fi
done

