#!/bin/bash

while true; do

    read -p "Введите целое число: " number

    if ! [[ $number =~ ^[0-9]+$ ]]; then
        echo "Ошибка - '$number' не является целым числом." >&2
        continue
    fi

    if [ $number -lt 0 ]; then
        echo "Ошибка - введите положительное число." >&2
        continue
    fi

    factorial=1
    for ((i=1; i<=$number; i++)); do
        factorial=$((factorial * i))
    done

    echo "Факториал числа $number равен $factorial."
    break
done
