#!/bin/bash
<<help 
This is a shell script to 
create users
help
echo "============  Creation Of Users Started ================="
read -p "Enter the user name:" username
read -p "Enter the password:" password
sudo useradd -m "$username"
echo -e "$password\n$password" | sudo passwd "$username"

echo "============  Creation Of Users Completed================="

sudo userdel $username

echo "============  Deletion Of Users Completed================="

#cat /etc/passwd | grep $username | wc
#echo "as wc is 0 the user is deleted"
# Check if the user still exists


#if ! getent passwd "$username" > /dev/null; then
   # echo "✅ User '$username' has been successfully deleted."
#else
   # echo "❌ User '$username' was not deleted."
#fi

if [ $(cat /etc/passwd | grep $username | wc | awk '{print $1}') == 0 ];
then
	echo "as wc is 0 the user is deleted"
else
	echo "The user was not deleted"
fi

