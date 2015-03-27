# Given a path, write a script named findimages.sh that
# • Prints the number of files that are present in the directory corresponding to the path.
# Sub-directories are not to be considered. Note that numbers have to be printed, not the
# name.
# • Also prints, subsequently, the names of all image files in the given path. Only names are
# printed, without the path. Image files are those files that end in .jpg. Note that files in
# the current directory as well all sub-directories should be considered.

#!/bin/bash

ls -lt $1 |
{
	count=0
	while read line ;
	do
		if [ "${line:0:1}" == "-" ]; then
			count=$((count+1))
		fi
	done
	echo $count
}

isimage () {
 	a=$1
 	l=${#a}
  	if [ "${a:$((l-3)):3}" == "jpg" ]; then
 		echo $1
 	fi
}

ls -R $1 |
 {
 	while read -a image ;
 	do
	 	isimage $image
 	done
 }