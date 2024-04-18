#!/bin/bash

USER=$(id -u)

if [$USER -eq 0]
then
echo "Connected To Sudo User.."
else
echo "Sudo access is required to install the packages"
fi