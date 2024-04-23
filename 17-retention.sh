#!/bin/bash

DIRECTORY=/tmp/app-logs
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

if [ -d $DIRECTORY ]
then
    echo "Directory exists.."
else
    echo "Directory doesn't exists we have to create it.."
    exit 1;
fi

# To find the file which are greater than 14 days

FILES_LIST=$(find $DIRECTORY -name "*.log" -mtime +14)

while IFS= read -r line
do
    echo "Deleting Files:"$line
    rm -rf $line
done <<< $FILES_LIST
