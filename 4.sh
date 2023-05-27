#!/bin/bash

echo "Меню:"
echo "1. Удалить файл"
echo "2. Переименовать файл"
echo "3. Переместить файл"
echo "4. Создать файл"

read -p "Выберите действие (1-4): " choice

case $choice in
    1)
        read -p "Введите имя файла для удаления: " filename
        if [ -f "$filename" ]; then
            rm "$filename"
            echo "Файл $filename успешно удален."
        else
            echo "Файл $filename не существует." >&2
        fi
        ;;
    2)
        read -p "Введите текущее имя файла: " oldname
        read -p "Введите новое имя файла: " newname
        if [ -f "$oldname" ]; then
            mv "$oldname" "$newname"
            echo "Файл $oldname успешно переименован в $newname."
        else
            echo "Файл $oldname не существует." >&2
        fi
        ;;
    3)
        read -p "Введите имя файла для перемещения: " filename
        read -p "Введите путь для перемещения файла: " destination
        if [ -f "$filename" ]; then
            if [ -d "$destination" ]; then
                mv "$filename" "$destination"
                echo "Файл $filename успешно перемещен в $destination."
            else
                echo "$destination не существует или не является директорией." >&2
            fi
        else
            echo "Файл $filename не существует." >&2
        fi
        ;;
    4)
        read -p "Введите имя нового файла: " filename
        touch "$filename"
        echo "Файл $filename успешно создан."
        ;;
    *)
        echo "Ошибка - некорректный выбор действия." >&2
        ;;
esac
