#!/bin/bash

if [ ! -f DB.txt ]; then
  echo "--my friends--" > DB.txt
fi

if [ -z "$1" ] || [ -z "$2" ]; then
  echo "사용법: ./ex3-8.sh <이름> <전화번호>"
  exit 1
fi

name=$1
phone=$2

echo "$name $phone" >> DB.txt

