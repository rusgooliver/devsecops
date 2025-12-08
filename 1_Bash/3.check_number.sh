#! /bin/bash
echo 'Please enter any number:'
read number

if [[ $number -gt 0 ]]; then
    echo 'This is a positive number'
  elif [[ $number -lt 0 ]]; then
    echo 'This is a negative number'
  else
    echo 'This is a zero'
fi
