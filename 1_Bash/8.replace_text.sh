#! /bin/bash

# Запрос данных  у пользователя:
echo "This is a script for word replacement in contents of file. Please enter a name file:"
read filename
echo "Please enter a replaced (old) word:"
read oldword
echo "Please enter a replacement (new) word:"
read newword

# Замена текста
sed -E "s/$oldword/$newword/g" -i $filename && echo "Replacement "$oldword" to "$newword" is Done" 
