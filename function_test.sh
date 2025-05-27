#!/bin/bash
#
<<info
This is an explanation of fuctions
info

function create_user {
	read -p "enter the user name: " username
sudo useradd -m $username
	echo "user created successfully"
}

#create_user
#create_user
#create_user

for (( i=1 ; i<=5 ; i++ ))
do
	create_user
done

