#!/bin/bash


for i in {20240101..20240131}
do
    touch -d /tmp/app/$i.log
done