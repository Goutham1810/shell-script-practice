#!/bin/bash

USERID=$(id -u)

if [ $USERID -eq 0 ]
then
echo "Connected To Sudo User.."
else
echo "Sudo access is required to install the packages"
exit 1;
fi

for i in $@
do
echo "Install the packages..";
done