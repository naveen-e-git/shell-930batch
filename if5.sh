#!/bin/bash

if [ -x $1 ];
then
	echo " it has execute permission"

	./$1
else
	echo " that file does't have execute permission"

	chmod 755 $1
fi

