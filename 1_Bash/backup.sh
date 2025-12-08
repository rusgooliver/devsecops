#!/bin/bash

# Использование: ./backup.sh /путь/к/источнику /путь/к/backup

src_dir="$1"
dst_dir="$2"

# Проверка аргументов
if [[ -z "$src_dir" || -z "$dst_dir" ]]; then
    echo "Usage: $0 <source_dir> <backup_dir>"
    exit 1
fi

# Текущая дата в формате YYYYMMDD
today=$(date +%Y%m%d)

# Создаём директорию назначения, если её нет
mkdir -p "$dst_dir"

# Копируем все файлы, добавляя дату к имени
for file in "$src_dir"/*; do
    [[ -f "$file" ]] || continue
    filename=$(basename "$file")
    name="${filename%.*}"
    ext="${filename##*.}"

    if [[ "$filename" == "$ext" ]]; then
        # файл без точки/расширения
        new_filename="${name}_${today}"
    else
        new_filename="${name}_${today}.${ext}"
    fi

    cp "$file" "$dst_dir/$new_filename"
done
