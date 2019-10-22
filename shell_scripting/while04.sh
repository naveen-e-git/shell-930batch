#!/bin/bash
ans="y"
while [ $ans = "y" ]
do
  echo -n "Enter file name to open: "
  read fn
  if [ -e $fn -a -f $fn ]
  then 
     cat $fn
  else
    echo "Error : no such a file"
  fi
echo -n "Do you want to open another file [y/n]: "
read ans
done
