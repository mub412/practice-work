#!/bin/bash

<<info 
this shell script checks if user exists
info

read -p "Enter the user name you wish to check" username

count=$(cat /etc/passwd | grep $username | wc | awk '{print $1}')

if [ $count == 0 ];
then 
	echo "user does not exist"
else 
	echo "user exists"
fi
