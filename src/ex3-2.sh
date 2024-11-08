#!/bin/sh

num1=$1
operator=$2
num2=$3

case $operator in
        +)
                result=$((num1 + num2))
                ;;
        -)
                result=$((num1 - num2))
                ;;
        \*)
                result=$((num1 * num2))
                ;;
        /)
                if [ "$num2" -ne 0 ]; then
                    result=$((num1 / num2))
                else
                    echo "0으로 나눌 수 없습니다."
                    exit 1
                fi
                ;;
        *)
                echo "지원하지 않는 연산자입니다. +, -, *, / 중 하나를 사용하세요."
                exit 1
                ;;
esac

echo $result

