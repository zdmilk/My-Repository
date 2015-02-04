#!/bin/bash

clear
getchar1()
{
	stty cbreak -echo
	dd if=/dev/tty bs=1 count=1 2> /dev/null
	stty -cbreak echo
}
echo -n "please input your passwd:"
while :
do
	ret=$(getchar1)
	if [ -z $ret ]
	then
#		echo
		break
	fi
	str=$str$ret
	echo -n "*"
done
echo "Your passwd:$str"
