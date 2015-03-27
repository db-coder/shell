# Write script called oldFile.sh, so that it will take a directory as input and move all files and
# directories more than 7 days old to a new directory named OLD within the given directory.
# Consider the current directory only, i.e., without the hierarchical structure

dir=$1
cd dir\
find . -mtime +0h55m