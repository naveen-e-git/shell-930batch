#example for to check file exits,notempty,empty,and its permisions and opening not empty file
#!/bin/bash
echo -n "enter file name:"
read fn
if [ -e $fn ]
then
  echo "$fn is exits"
  if [ -s $fn ]
  then 
    echo "$fn is not empty"
     if [ -r $fn ]
     then
       echo "$fn has read permission"
       echo "`ls -l $fn `"
       cat $fn
       echo
     else 
       echo "$fn is has no read permission"
       echo "`ls -l $fn `"
     fi
  else
    echo "$fn is empty"
    ls -l $fn
  fi
else
  echo " $fn does not exit" 
fi

