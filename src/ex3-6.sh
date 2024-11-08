#!/bin/sh

if [ -z "$1" ]; then
    echo "사용법: ./ex3-6.sh <폴더 이름>"
    exit 1
fi

if [ ! -d "$1" ]; then
    mkdir "$1"
    cd "$1"
    for i in $(seq 0 4); do
        touch "file$i.txt"
    done
    cd ..
fi

if [ ! -f "$1.tar" ]; then
    tar cvf "$1.tar" "$1" > /dev/null
fi

for i in $(seq 0 4); do
    echo -n "file$i.txt "
done
echo "$1.tar"

if [ ! -d "$1"_extracted ]; then
    mkdir "$1"_extracted
    tar xvf "$1.tar" -C "$1"_extracted > /dev/null
fi

cd "$1"_extracted
for i in $(seq 0 4); do
    echo "file$i.txt"
done

exit 0
