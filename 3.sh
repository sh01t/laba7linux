#!/bin/bash

interfaces=$(ls /sys/class/net)

if [ -z "$interfaces" ]; then
    echo "Не удалось найти сетевые интерфейсы." >&2
fi

echo "Список подключенных сетевых интерфейсов:"
for interface in $interfaces; do
    echo "- $interface"
done
