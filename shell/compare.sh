#!/bin/bash

# Program:
#	compare the size of two integer,output the max number
# History:
# 2015/2/3	zd	v1.0

echo  "This program compare the size of two integer,output the Max integer."

if [ $# -ne 2 ]
then
	echo "Usage:$0 Integer1 Integer2"
fi

if [ $1=~"^[0-9]\{1,\}+$"  -a  $2=~"^[0-9]+$" ]
then
	if test $1 -eq $2
	then	echo "$1 = $2"
	elif test $1 -gt $2
	then	echo "The Max is $1"
	else test $1 -lt $2
		echo "The Max is $2"
	fi
else
	echo "Please input the integer!"
fi



