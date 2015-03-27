# Write a bash script rename.sh to rename files of the form ddmmyyyyANY.jpg in a given directory
# to yyyy-mm-dd-ANY.jpg Your script should take the directory name as argument; if no argument
# is given, it must print the usage of this script and exit with exit value 1. If the given argument
# does not correspond to a directory, the script must exit with exit value 2.
# • Here, ‘dd’, ‘mm’, ‘yyyy’ correspond to the two digit date, two digit month, and four digit
# year. Only consider files with dd in the range 01–31, mm in the range 01-12, and years in
# the range 2013–2015.
# • ANY corresponds to any string. The string may be empty. The string may contain spaces.


if [ $# -eq 0 ]; then
	echo "usage"
	exit 1
fi

if [ -d "$1" ]; then
	cd $1/
	ls -1 *.jpg |
	while read name;
	do
		l=${#name}
		if [ $l -ge 8 ]; then
			if [ ${name:0:2} -ge 01 ] && [ ${name:0:2} -le 31 ] && [ ${name:2:2} -ge 01 ] && [ ${name:2:2} -le 12 ] && [ ${name:4:4} -ge 2013 ] && [ ${name:4:4} -le 2015 ]; then
				name1="${name:4:4}-${name:2:2}-${name:0:2}-${name:8:l-8}"
				mv $name $name1
			fi
		fi
	done
	exit 0
else
	exit 2
fi