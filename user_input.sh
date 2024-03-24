#!/bin/bash

#script to get user input and print the result

read -p "Enter the first number: " num1
read -p "Enter the second number: " num2

sum=$((num1 + num2))

echo "Sum of $num1 and $num2 is $sum"

