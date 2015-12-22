#!/bin/bash
#Gio Lapid
#Counter App for bash
echo "Hello what is your name?"
read name

#sanitizing 
numbers='^[0-9]+$'
while [[ -z "$name" ]] || [[ $name =~ $numbers ]] || [[ $name == *['!'@#\$%^\&*()_+]* ]]  ; do
  echo "Please use letters as your name"
  read name
done

echo "Hello $name, please choose a number between 5 and 100"
read num

letter='[a-z]'
while [[ $num =~ $letter ]] || [[ $num -lt '5' ]] || [[ $num -gt '100' ]] ; do
    echo "Please input number between 5-100. " 
    read num
done

clear
echo "$name, I am now counting to $num"

for(( i=2; i < $num+1; i+=2)); do
    echo $i
done

