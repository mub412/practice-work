#!/bin/bash

<<info
This shell script will take periodic backups
Eg.
./backup.sh <source> <dest>
Src /home/ubuntu/scripts
Dest /home/ubuntu/backups
info

src=$1
dest=$2

timestamp=$(date '+%Y-%m-%d-%H-%M') 
zip -r "$dest/backup-$timestamp.zip" $src > /dev/null

aws s3 sync "$dest" s3://twm-backups-d

echo "Backups Done & uploaded to s3"


