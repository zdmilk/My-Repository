#!/bin/bash

echo "$1"

#if [ "$1"=~"^[0-9]+$" ]
if [[ $1 =~ ^[1-9][0-9] ]]
then 
	echo "Ok"
else
	echo "Fail"
fi
