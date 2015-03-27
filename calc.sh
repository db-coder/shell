#!/bin/bash

# Assumption : Given seconds is an integer.
#              Outputs the time in hh::mm:ss format.

a=$1


#Checking for negative numbers or random shit
if [ "$a" -lt 0 ]; then
	echo "Not Valid Input" #Assuming no time machines
	exit -1
fi

b=60
sec=$((a%b))
a=$((a-sec))
a=$((a/b))
min=$((a%b))
a=$((a-min))
a=$((a/60))
hrs=$a

# Adding 0 before if it's a single digit number.
if [ "$hrs" -le 9 ]; then
	hrs="0$hrs"
fi
if [ "$min" -le 9 ]; then
	min="0$min"
fi
if [ "$sec" -le 9 ]; then
	sec="0$sec"
fi

echo "$hrs::$min::$sec"
