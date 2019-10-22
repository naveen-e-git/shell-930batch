#Installing webserver based on os family by using if condition

#!/bin/bash
lsb_release -a
#cat /etc/redhat-release
a="`echo $?`"
echo "$a"
if [ $a == 0 ]
then
  echo "It is debian family"
  sudo apt install apache2 -y
  sudo service apache2 start
  echo "Hii i am debian family" >index.html
  sudo cp index.html /var/www/html/index.html
  sudo service apache2 restart
else
   echo "It is redhat family"
   sudo yum remove httpd -y
   sudo yum install httpd -y
   if [ -e /sbin/service ]
   then
   sudo service httpd start
   echo "Hii i am redhat family" >index.html
   sudo cp index.html /var/www/html/index.html
   sudo service httpd restart
   else
     sudo systemctl start httpd
     echo "Hii i am redhat family" >index.html
     sudo cp index.html  /var/www/html/index.html
     sudo systemctl restart httpd
   fi
fi
