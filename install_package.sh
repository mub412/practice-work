#!/bin/bash
<<info 
this scripts will install the package 
that you pass in the arguments 
info

echo "installing" $1
sudo apt update > /dev/null
sudo apt install $1 -y
echo "installing complete"
