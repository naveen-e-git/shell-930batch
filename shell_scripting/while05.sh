#!/bin/bash
while true #until false
do
  echo -n "Enter file name to open: "
  read fn
  if [ -e $fn -a -f $fn ]
  then 
     cat $fn
     break
  else
    sleep 2
    continue
  fi
done
