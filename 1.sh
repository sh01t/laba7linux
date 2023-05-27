#!/bin/bash

while true; do

    read -p "Введите целое число: " number

    # Проверка является ли число положительным
    if [ $number -gt 0 ]; then
        echo "Число $number является положительным."
        break
    elif [ $number -eq 0 ]; then
        echo "Число $number равно нулю."
    else
        echo "Число $number является отрицательным."
    fi
done
