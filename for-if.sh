#!/bin/bash



os='cat /etc/os-release | head -1 | cut -c 6-13'


for i in 192.168.1.18


 do 
     scp $1 vagrant@$i:/tmp

done
