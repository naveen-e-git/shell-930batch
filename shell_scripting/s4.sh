#example for to creating a empty file nd to check its permissions"
#!/bin/bash
echo -n "Enter file name:"
read fn
echo 
echo "`touch $fn`"
echo
echo "$fn has been crteated successfully"
echo "`ls -l $fn`"
