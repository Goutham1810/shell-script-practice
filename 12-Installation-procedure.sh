#!/bin/bash

USERID=$(id -u)
TIMESTAMP=$(date +%F-%H-%M-%S)
SCRIPTNAME=$(echo $0 | cut -d "." -f1)
LOGFILE=/tmp/$SCRIPTNAME-$TIMESTAMP.log
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"


VALIDATE()
{
    if [ $1 -ne 0 ]
    then 
        echo -e "$R $2.. Installation is failed.."
        exit 1;
    else
        echo -e "$G $2.. Installation is success.."
    fi    
}

if [ $USERID -eq 0 ]
then
echo -e "Connected To $R Sudo User $N"
else
echo -e "Sudo access is required to install packages"
exit 1;
fi

for i in $@
do
echo "Validating $i package"
dnf list installed $i &>>$LOGFILE
if [ $? -eq 0 ]
then
    echo "The $i packages are installed.. Hence we can ignore it.."
else
    dnf install $i -y &>>$LOGFILE
    VALIDATE $? "Installation of $i"
fi
done