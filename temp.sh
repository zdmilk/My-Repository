#!/bin/bash
clear

getchar()
{
	stty cbreak -echo
	dd if=/dev/tty bs=1 count=1 2>/dev/null
	stty -cbreak echo
}

echo  "Hello,Welcome login the Linux!"
x=0
while :
do
	echo -n "Please input the accout:"
	read accout
	echo -n "Input the password:"
	while :
	do
		ret=$(getchar)
		if [ -z $ret ]
		then	
			echo
			break
		fi
		passwd=$passwd$ret
		echo -n "*"
		x=`expr $x + 1`
	done
	echo $passwd

	if [ $accout = "zd" -a $passwd = "123456" ]
	then
		echo "Welcome login the shell!"
		break
	else
		echo "Your accout or passwd are error!"
		echo "Please input again!"
		unset passwd
	fi

done

