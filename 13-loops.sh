#!/bin/bash

for i in {1..9}
do
    echo $i
    j=2024040
    touch -d /tmp/app/$j$i.txt
done