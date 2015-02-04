#!/bin/bash

# Program:
#	mimic the phenomenon of logining the linux 
#	Input the "accout" and "passwprd" , delete ir and check it
# History:
# 2015/1/30	zd	V1.0	


clear

getchar()
{
	stty cbreak -echo
	dd if=/dev/tty bs=1 count=1 2>/dev/null
	stty -cbreak echo
}
:<<EOF
display()
{
	if [ -z $1 ]
	then
		echo
		break
	fi
	str=$str$ret
	echo -n "*"
	return $str
}
EOF
:<<EOF
judge()
{
	if [ $1 = "zd" -a $2 = "123456" ]
	then
		echo "Welcome login the shell!"
		break
	else
		echo "Your accout or passwd are error!"
		echo "Please input again!"
	fi
}
EOF

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
		
		# Input the keyboard "Backspace" (Delete one input character)
		if [ $ret =  ]
		then
			# The number character of input
			if [ $x -eq 0 ]
			then
				continue
			fi
		passwd=${passwd%?}   # delete the last character
		echo -n  "\33[1D"    # cursor move forward
		echo -n  "\33[K9"    #delete the character range from cursor 
		                       #location to end
		x=`expr $x - 1`
		continue
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

