#! /bin/bash
# Создаем директорию
mkdir test0 && echo "A directory 'test0' has been created"
sleep 1
# Входим в директорию
cd test0 && echo "Going to the directory 'test0'"
sleep 1
# Создаем файлы
touch 1.txt 2.txt 3.txt 4.txt 5.txt && echo "Files have been created"
sleep 1
# Удаляем файлы
rm 1.txt 2.txt 3.txt 4.txt 5.txt && echo "Files have been DELETED"
# Выходим из директории
cd ../
# Удаляем директорию
rm -d ./test0 && echo "Directory 'test0' have been DELETED"
