#!/bin/bash

while true; do

  read -p "Введите имя пользователя: " username

  if id -u "$username" >/dev/null 2>&1; then

    uid=$(id -u "$username")

    groups=$(id -nG "$username")

    primary_group=$(id -gn "$username")

    echo "UID пользователя $username: $uid"
    echo "Имена групп пользователя $username: $primary_group $groups"
    break
  else
    echo "Пользователь $username не зарегистрирован в системе."
  fi
done
