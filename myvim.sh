#!/bin/bash

# recurring through the input until :q is encountered.
while true;
do
	read -r a                               
	if [ "$a" == ":q" ]; then
		exit 0
	fi
echo $a >>$1     # file name is taken as $1.
done
