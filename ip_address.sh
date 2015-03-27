ifconfig |
grep "inet addr:" |
{
	read w1
	read w2
	n=${#w2}
	flag=0
	res=
	for((i=0;i < $n;i++))
	do
		ch=${w2:$i:1}
		if [ "$flag" == "1" ]; then 
			res="$res$ch"
		fi

		if [ "$ch" == ":" ]; then
			flag=1
		fi

		if [ "$ch" == " " ] && [ "$flag" == "1" ]; then
			echo $res
			exit 0
		fi

	done

}