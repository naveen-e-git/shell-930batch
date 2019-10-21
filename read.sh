#!/bin/bash

# script to demonstrate to pass values at run time 

echo "ENTER A USER NAME"

read -p 'Username:' uname


echo "ENTER USER PASSWORD"

read -s -p 'Password:' upass


echo " user name is $uname & user password is $upass"
