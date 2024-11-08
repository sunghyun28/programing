#!/bin/sh

execute_command() {
    echo "함수 안으로 들어옴"
    ls "$@" | sed 's/total/합계/'  # 'total'을 '합계'로 변경하여 출력
}

# 프로그램 시작
echo "프로그램을 시작합니다."
execute_command "$@"
echo "프로그램을 종료합니다."
