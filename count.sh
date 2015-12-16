#!/bin/bash
#Gio Lapid
#Counter App for bash
echo "Hello what is your name?"
read name

echo  "Hello "$name
#sanitizing 
re='^[0-9]+$'
if [[ $name =~ $re ]] ; then
  echo "Please use letters as your name" >&2; exit 1
fi


echo "Please choose a number between 5 and 100"
read num
re='^[0-9]+$'
if ! [[ $num =~ $re ]] ; then
  echo "Please use numbers" >&2; exit 1
elif [ $num -lt 5 ] ; then
  echo "Please choose a number greater than 5"
elif [ $num -gt 100 ] ; then
  echo "Please choose a number less than 100"
else
  for(( i=1; i < $num+1; i+=3));do
    echo $i
  done
fi

