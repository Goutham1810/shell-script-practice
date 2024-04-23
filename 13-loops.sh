#!/bin/bash

file_name=application.log

for i in {20240101..20240131}
do
    touch -d /tmp/app/$i $file_name
done