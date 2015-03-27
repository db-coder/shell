#!/bin/bash

#Shell script to reverse characters in a string.

string=$1  #Original String
rev=       #rev is the reverse one.

n=${#string} # the length of the given string.

for((i=$n-1;i>=0;i--));
 do
  	rev="$rev${string:$i:1}";
 done

### Explanation.
### Initially, the rev string is empty.Starting from end of the
### 	original string, we append each character in the string
###     to rev.As they are added in reverse order,rev becomes 
###     the reverse of string by the end of for loop.

echo "$rev"
