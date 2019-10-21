#!/bin/bash

# os based installation

os=`cat /etc/os-release | head -1 | cut -c 6-14`

echo $os

if [ $os="Ubuntu" ];
then
	echo " its a debian system"
	sudo apt install tree -y
else
	echo " its a redhat system"
	sudo yum install tree -y
fi




