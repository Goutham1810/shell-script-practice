#!/bin/bash

USERID=$(id -u)
TIMESTAMP=$(date +%F-%H-%M-%S)
SCRIPTNAME=$(echo $0 | cut -d "." -f1)
LOGFILE=/tmp/$SCRIPTNAME-$TIMESTAMP

if [ $USERID -eq 0 ]
then
echo "Connected To Sudo User.."
else
echo "Sudo access is required to install the packages"
exit 1;
fi

for i in $@
do
echo "Install the packages..$i"
dnf list installed $i &>>$LOGFILE
if [ $? -eq 0]
then
    echo "The $i packages are installed.. Hence we can ignore it.."
else
    echo "The $i package is not installed.."
fi
done