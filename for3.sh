#Coping public key of fresher to remote machines

#!/bin/bash

for ip in `cat iplist`

do

	echo "$ip"
        
	ssh-copy-id vagrant@$ip

done


