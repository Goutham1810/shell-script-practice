#!/bin/bash

USERID=$(id -u)

VALIDATE()
{
    if [$? -ne 0]
    then 
        echo "$2.. Installation is failed.."
        exit 1;
    else
        echo "$2.. Installation is success.."
    fi    
}

if [ $USERID -ne 0 ]  
then
echo "Please run this user from sudo user"
exit 1; # To manually exit 
else
echo "You are good to execute the installation commands"
fi
dnf install mysql -y
VALIDATE $? "Mysql"
dnf install git -y
VALIDATE $? "Github"
