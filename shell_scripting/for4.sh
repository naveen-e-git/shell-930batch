#Coping webserver script into remote machines nd execute that script from hostmachine
#!/bin/bash
for ip in `cat iplist`
do
scp webserver.sh vagrant@$ip:/home/vagrant
ssh vagrant@$ip bash webserver.sh
done
