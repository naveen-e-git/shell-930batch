#Example for checkig user details for loging any services
#!/bin/bash
read -p "Enter user name: " un
echo
read -s -p "Enter password: " pd
echo 
if [ $un = "gopinadh" -a  $pd = "123" ]
then
  echo "user name and password matched!. successfully logined"
else
  echo "user name or password doesn't matched!. Try aggian"

fi
