

presentTime=$(date +"%T")
n=${#presentTime}
timeInt=
for((i=0;i < $n;i++)); 
do
	ch=${presentTime:$i:1}
	if [ "$ch" == ":" ]; then
		timeInt=$timeInt
	else
		timeInt="$timeInt$ch"
	fi
done



morningEnd=115959
afternoonEnd=165959
if [ "$timeInt" -le "$morningEnd" ]; then
	echo -n "Good Morning, " 
else
	if [ "$timeInt" -le "$afternoonEnd" ]; then
		echo -n "Good Afternoon, " -n 
	else
		echo "You are supposed to play now."
		exit 1
	fi
fi

echo -n "$USER. Aap ka din shubh ho! It is "
Date=$(date +"%a %b %d %T %Y")
echo $Date



