
#!/bin/bash

read -p "Введите путь к первой директории: " dir1

if [ ! -d "$dir1" ]; then
  echo "Директория \"$dir1\" не существует."
  exit 1
fi


read -p "Введите путь ко второй директории: " dir2


if [ ! -d "$dir2" ]; then
  echo "Директория \"$dir2\" не существует."
  exit 1
fi

count=0

for file1 in "$dir1"/*; do

  if [ -f "$file1" ]; then
    filename=$(basename "$file1")

    if cmp -s "$file1" "$dir2/$filename"; then # cmp -s для проверки на совпадение
      echo "Файл \"$filename\" найден в обоих директориях и имеет одинаковое содержимое."
      count=$((count + 1))
    fi
  fi
done

echo "Общее количество одинаковых файлов: $count"
