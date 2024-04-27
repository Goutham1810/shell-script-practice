#!/bin/bash
DISK_USAGE=$(df -h)
DISK_THRES=75

while IFS= read -r line
do
    USAGE=$(echo $line | awk -F " " '{print $5}' | cut -d "%" -f1)
    FOLDER_NAME=$(echo $line | awf -F " " '{print %NF}')
    if[$USAGE -ge $DISK_THRES]
    then
        MESSAGE+=echo -e "The $FOLDER_NAME -- $USAGE Crossed Threshold Value"
    else
        MESSAGE=echo -e "No Disk reached Threshold Value."
    fi
done <<< $DISK_USAGE

echo "The Output: $MESSAGE"
