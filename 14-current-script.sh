#!/bin/bash

COURSE="DevOps from Current Script"

echo "Before calling other script, course: $COURSE"
echo "Process ID of current shell script: $$"

#./15-other-script.sh
#Process ID of current shell script: 1509
#Process ID of other script: 1510

source ./15-other-script.sh

echo "After calling other script, course: $COURSE"