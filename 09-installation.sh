#!/bin/bash

USERID=$(id -u)
#dnf install mysql -y
if [ $USERID -ne 0 ]  
then
echo "Please run this user from sudo user"
exit 1; # To manually exit 
else
echo "You are good to execute the installation commands"
fi
dnf install mysqll -y
if [ $? -ne 0 ]
then
echo "The installation of mysql is failed"
exit 1;
else
echo "The installation of mysql is successful"
fi

