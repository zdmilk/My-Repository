#!/bin/bash

clear

while :
do
	echo -n "Your Login:"
	read name
	stty -echo
	echo -n "Password:"
	read  passwd
	stty echo
#	stty cooked
#	echo  "word:"
#	read word
        if [ $name = "zd" -a $passwd = "123456" ]
	then
		echo  "Welcome to login shell!"
		break;
	else
		echo -n "Your Login name or password is wrong!"
		echo "Input again!"
	fi
done
#echo -n "Welcome to login shell!"
