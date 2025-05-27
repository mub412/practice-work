#!/bin/bash

<<help Check if the correct number of arguments is provided
#if [ "$#" -ne 2 ]; then
  echo "Usage: $0 <username> <password>"
  exit 1
#fi
help
username="$1"
password="$2"

# Create the user
sudo useradd -m "$username"

<<help
# Check if user creation was successful
if [ $? -ne 0 ]; then
  echo "Error creating user: $username"
  exit 1
fi
help
# Set the password for the user
echo "$username:$password" 
<<help
# Check if password setting was successful
if [ $? -ne 0 ]; then
  echo "Error setting password for user: $username"
  exit 1
fi
help
echo "User '$username' created successfully."
