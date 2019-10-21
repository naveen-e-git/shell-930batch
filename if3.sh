#!/bin/bash

echo "ENTER A VALUE"

read -p "A:" a

echo "ENTER B VALUE"

read -p "B:" b


if [ $a -eq $b ];
then
	echo " both are equal "

elif [ $a -gt $b ];
then
	echo " A is greater then B "

else
	echo " A is smaller then B "

fi
