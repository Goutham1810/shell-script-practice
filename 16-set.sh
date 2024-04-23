#!/bin/bash

set -e 
error_handling()
{
    echo "The execution of script failed at line number of $1 and at command of $2"
}

trap 'error_handling ${LINENO} "$BASH_COMMAND"' ERR

USERID=$(id -u)
dnf install mysqll -y
dnf install git -y
