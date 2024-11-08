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
    tar cvf "$1.tar" "$1"
fi

if [ ! -d "$1"_extracted ]; then
    mkdir "$1"_extracted
    tar xvf "$1.tar" -C "$1"_extracted > /dev/null
fi

cd "$1"_extracted/"$1" || exit
for i in $(seq 0 4); do
    if [ ! -d "file$i" ]; then
        mkdir "file$i"
        ln -s "../file$i.txt" "file$i/file$i.txt"
    fi
done

alias ls='ls --time-style=+%Y-%m-%d | sed s/^total/합계/'

exit 0
