#!/bin/bash

LOG_DIR='/tmp/scripts/logs'

BACKUP_DIR='/tmp/scripts/logs_backup'

mkdir -p $BACKUP_DIR

for i in `cat /tmp/scripts/backup_files.txt`

do

      	if [ -f $LOG_DIR/$i ]
  
	then
    
		echo "Coping $i to logs_backup directory"
    
		cp $LOG_DIR/$i  $BACKUP_DIR
  
	else
    
		echo "$i log file does not exist,skipping."
  
	fi

done

echo "Zipping log files"

tar -cvzf /tmp/scripts/logs_backup.tar.gz /tmp/scripts/logs_backup

echo

echo

echo "Backup completed successfully"

