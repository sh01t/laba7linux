#!/bin/bash

directory="/home/nik/laba8"

files=()

# проверяем что директория существует и доступна для чтения
if [ -d "$directory" ]; then

  all_files=$(ls "$directory")

  for file in $all_files; do
     #проверяем права доступа файла
    if [ -f "$directory/$file" ] && [ -r "$directory/$file" ] && [ -x "$directory/$file" ]; then
      files+=("$file")
    fi
  done


  if [ ${#files[@]} -gt 0 ]; then #количество файлов > 0
    echo "Файлы с правами доступа 755 в директории $directory:"
    for file in "${files[@]}"; do
      echo "$file"
    done
  else
    echo "В директории $directory нет файлов с правами доступа 755."
  fi
else
  echo "Директория $directory не существует."
fi
