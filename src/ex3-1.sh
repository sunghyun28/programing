#!/bin/sh

count=${1:-"infinity"}

if [ "$count" = "infinity" ]; then
    while true
    do
        echo "hello world"
    done
else
    i=1
    while [ $i -le $count ]
    do
        echo "hello world"
        i=$((i + 1))
    done
fi
