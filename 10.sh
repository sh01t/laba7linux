#!/bin/bash

read -p "Выберите тип действия (разархивировать: '1', заархивировать: '2'): " n

if [ "$n" == "1" ]; then
  # распаковка
  read -p "Введите имя файла с архивом: " archive_file
  tar -xf "$archive_file"
  echo "Архив успешно распакован"
elif [ "$n" == "2" ]; then
  # архивация
  read -p "Введите каталог для архивации: " directory
  read -p "Введите имя архива: " archive_name
  tar -czf "$archive_name" "$directory"
  echo "Архив успешно создан"
else
  echo "Некорректный тип действия"
fi
