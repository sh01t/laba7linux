#!/bin/bash

filename="example.txt"
permission_mask="0644" #владельцу - полные права доступа для чтения и записи, группе и остальным пользователям - чтение

# текущую маску разрешений на доступ
default_mask=$(umask)

touch "$filename"

chmod "$permission_mask" "$filename"


# восстанавливаем маску разрешений на доступ в значение по умолчанию
umask "$default_mask"
