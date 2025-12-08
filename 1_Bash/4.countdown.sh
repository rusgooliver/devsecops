#! /bin/bash
echo 'Please enter any number:'
read i
while  [[ $i -ge 0  ]] ; do
 echo $i
 sleep 1
 i=$(($i- 1))
done
