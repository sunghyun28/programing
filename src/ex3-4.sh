#!/bin/sh

echo "리눅스가 재미있나요? (yes / no)"
read answer

case $answer in
    yes* | YES* | y* | Y*)
        echo "yes"
        ;;
    no* | NO* | n* | N*)
        echo "no"
        ;;
    *)
        echo "yes 또는 no로 입력해 주세요."
        ;;
esac

