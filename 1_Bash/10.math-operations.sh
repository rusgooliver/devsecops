#! /bin/bash

#Приветствие
echo "This is a scrypt for math operations with two numbers."

#Ввод даных
echo "Enter a":
read a
echo "Enter b":
read b
echo "Enter action (* / + -)":
read c

#Вычисление
((d=$a$c$b))
echo "Answer: a'$c'b=$d"

#Проверка и вывод остатка после деления
((f=$a%$b))
if [[ $c == '/' && $f -ne 0 ]] ;then
echo "Fractional after division: "$f
else
echo "Bye-bye"
fi
