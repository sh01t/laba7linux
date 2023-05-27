#!/bin/bash

counter=0

while true; do
    echo "Значение счетчика: $counter"
    ((counter++))

    if [ $counter -eq 10 ]; then
        echo "Счетчик достиг значения 10."
        counter=0
        sleep 10
    fi

    sleep 2
done

