#!/bin/bash

for i in user{1..5}

do

     	echo "`sudo useradd -s /bin/bash $i`"
   
	echo
  
       	echo "$i added successfully!"
  
       	echo 
   
	echo $i:"123" | sudo  chpasswd
   
	echo
   
	echo "Password for user $i changed successfully"
 done
