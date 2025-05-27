#!/bin/bash

hero="mohi"
villain="uddin"

echo "My name Is: $hero $villain"
#shell/environment variables (pre-defined variable)

echo "current logged in user $USER"

#read take input from user
read -p "Ransco ka poora naam kya tha?" fullname

echo "Ranchoo kaa pura name $fullname tha"

#arguments


echo "My Name: $1"
echo "My Brother Name: $2"
echo "My Sister Name: $3"

echo "Hence the Total sibling name are $#"
echo "Hence the 3 sibling name are $@" #(it means without $0)
