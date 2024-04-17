#!/bin/bash

USERID=$(id -u)
#dnf install mysql -y
if [ $USERID -ne 0 ]  
then
echo "Please run this user from sudo user"
exit 1; # To manually exit 
else
echo "You are good to execute the installation commands"
dnf install mysql -y
dnf install git -y
fi
