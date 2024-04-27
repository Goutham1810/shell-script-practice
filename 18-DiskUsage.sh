#!/bin/bash
DISK_USAGE=$(df -h | grep boot)
DISK_THRES=75
MESSAGE=""

while IFS= read -r line
do
    USAGE=$(echo $line | awk -F " " '{print $5F}' | cut -d "%" -f1)
    FOLDER_NAME=$(echo $line | awk -F " " '{print $NF}')
    if [ $USAGE -ge $DISK_THRES ]
    then
        MESSAGE+="$FOLDER_NAME -- $USAGE Crossed Threshold Value \n "
    fi
done <<< $DISK_USAGE

echo -e "Message: $MESSAGE"