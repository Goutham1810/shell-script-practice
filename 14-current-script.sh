#!/bin/bash

NAME="This is Goutham"

echo "Calling From Current Script $NAME"
echo "The process ID $$"

./15-other-script.sh

echo "Calling From Other Script $NAME"
echo "The process ID $$"