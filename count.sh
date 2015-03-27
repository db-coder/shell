#!/bin/bash

#~ Explanation : 
			#~ We use a flag to store whether a word has started or not.
				#~ It is initialised to 0. Whenever a space is encountered, it is made 0 any other character makes it 1.
				#~ We add words after we encounter spaces.A space is added at the end so as to avoid missing last word.
				#~ We initialise spaces and characters to -1 to counter-balance this.
				


chars=-1
spaces=-1
words=0
spsym=0

IFS= read string    #Changing seperator to read a line precisely
string="$string " #Appending space to the string.
n=${#string}      # Size of string. 
flag=0             
for((i=0;i<$n;i++));
do
	ch=${string:$i:1}
	chars=$((chars + 1))
	if [ "$ch" == " " ]; then
		spaces=$((spaces+1))
		if [ "$flag" == "1" ]; then
			words=$((words+1))
		fi
		flag=0
	else
		flag=1
	fi
	
	if [ "$ch" == "$" ] || [ "$ch" == "<" ] || [ "$ch" == ">" ]; then
		spsym=$((spsym +1))
	fi
done
printf "Words = $words \nCharacters = $chars \nSpaces = $spaces \nSpecial Symbols = $spsym \n"

