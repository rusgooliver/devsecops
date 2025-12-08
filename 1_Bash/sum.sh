#! /bin/bash

# Решение с вводом через пробел
#echo "Enter two numbers separated by a space:"
#read num
#a=$(echo $num | awk '{print $1}\')
#b=$(echo $num | awk '{print $2}\')
#((c=$a+$b))
#echo "SUMM = "$c

# Решение с вводом через Enter
echo "Enter first number:"
read a
echo "Enter second number:"
read b
((c=$a+$b))
echo "SUMM = "$c
