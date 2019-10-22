#Creating 10 empty files in /tmp by using for loop
#!/bin/bash
for i in a{1..10}.txt
do
echo "`touch /tmp/$i`"
done
