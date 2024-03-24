#!/usr/bin/env bash
#find number is greater than or smaller than
#if loop example

a=7
b=11

if [ $a -gt $b ]
then
	echo 'a is greater than b'
else
	echo 'b is greater than a'
fi

echo "value of a is $a"
echo "value of b is $b"

