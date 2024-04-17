#!/bin/bash

USERID=$(id -u)
#dnf install mysql -y
if [ $USERID -ne 0 ]  
then
echo "Please run this user from sudo user"
else
echo "You are good to execute the installation commands"
fi
