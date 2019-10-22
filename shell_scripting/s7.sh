#Example for to checkig wheather it is file or directory
#!/bin/bash
echo -n "enter file or directory: "
read a
if [ -e $a ]
then 
  if [ -f $a ]
  then
    echo "$a is a file"
  elif [ -d $a ]
  then
  echo " $a is a dectory "
  else
    echo " $a is not a file and not directory "
  fi
else
  echo "There is no file or directory $a"
fi
