#! /bin/bash

# Запрос файла у пользователя:
echo "This is a script for displaying the contents of a file line by line. Please enter a name file:"
read filename

# Определяем количество строк и записываем в переменную
summ_line=$(wc -l $filename | awk '{print $1}\')

# Цикл вывода строк c использованием sed -n 1p file
i=$summ_line
line=1
while [[ $i -gt 0 ]] ; do
 sed -n "${line}p" "$filename"
 sleep 1
 #уменьшаем число оставшихся строк и увеличиваем номер строки для следующего вывода
 i=$(($i-1))
 line=$(($line+1))
done
echo "End of file $filename"
