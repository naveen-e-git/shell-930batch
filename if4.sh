#!/bin/bash


if [ -d $1 ];
then 
	echo " its a directory "

	touch $1/file1

else
	echo " its a file "

	cat $1

fi
