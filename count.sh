#!/bin/bash
#Gio Lapid
#Counter App for bash

#asks for name and reads it
echo "Hello what is your name?"
read name

#sanitizing the name and makes sure it's not empty
#not a number or a symbols
numbers='^[0-9]+$'
while [[ -z "$name" ]] || [[ $name =~ $numbers ]] || [[ $name == *['!'@#\$%^\&*()_+]* ]]  ; do
  echo "Please use letters as your name"
  read name
done

#if the loop above passes the program will ask for a number
echo "Hello $name, please choose a number between 5 and 100"
read num

#it will sanitize the number input and makes sure it's between 5 and 100
#it will also make sure the input is not letters
letter='[a-z]'
while [[ $num =~ $letter ]] || [[ $num -lt '5' ]] || [[ $num -gt '100' ]] ; do
    echo "Please input number between 5-100. " 
    read num
done

#clear everything on the screen and do the count
clear
echo "$name, I am now counting to $num"

for(( i=2; i < $num+1; i+=2)); do
    echo $i
done

