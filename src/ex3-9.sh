#!/bin/bash

name=$1

if [ -z "$name" ]; then
  echo "사용법: ./ex3-9.sh <이름>"
  exit 1
fi

result=$(grep -i "$name" DB.txt)

if [ -z "$result" ]; then
echo 
else
  echo "$result"
fi
