#!/bin/bash

DIRECTORY=/tmp/app-logs
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

if [ -d $DIRECTORY ]
then
    echo "Directory exists.."
else
    echo "Directory doesn't exists we have to create it.."
fi