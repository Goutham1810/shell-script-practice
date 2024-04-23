#!/bin/bash

NAME="Goutham From Current Script"


echo "Before calling other script, name: $NAME"
echo "Process ID of current shell script: $$"

#./15-other-script.sh
#Process ID of current shell script: 1509
#Process ID of other script: 1510

source ./15-other-script.sh

echo "After calling other script, name: $NAME"