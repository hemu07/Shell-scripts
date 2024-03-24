#!/usr/bin bash

#find number of s in mississipi

x=mdfsdsssississipi

grep -o "s" <<<"$x" | wc -l

# find only s --> -o flag 
