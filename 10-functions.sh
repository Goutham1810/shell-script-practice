#!/bin/bash

USERID=$(id -u)
TIMESTAMP=$(date +%F-%H-%M-%S)
SCRIPTNAME=echo $0 | cut -d "." -f1
LOGFILE=/tmp/$SCRIPTNAME-$TIMESTAMP

VALIDATE()
{
    if [ $1 -ne 0 ]
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
dnf install mysql -y &>>$LOGFILE
VALIDATE $? "Mysql"
dnf install git -y &>>$LOGFILE
VALIDATE $? "Github"
