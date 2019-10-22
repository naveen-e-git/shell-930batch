#!/bin/bash
TIME_NOW=`date +'%d_%m_%y_%H:%M:%S'`
BACKUPFILE="db_backup_$TIME_NOW".gz
BACKUP_DIR="/opt/db_backup_dir"
echo "`mkdir $BACKUP_DIR`"
PATHOFBACKUPFILE="$BACKUP_DIR/$BACKUPFILE"
LOG_FILE="`touch $BACKUP_DIR/"backup_log_" $(date +'%Y_%m')`".txt
echo "mysqldump started at $(date +'%d-%m-%Y%H:%M:%S')">> "$LOG_FILE"
mysqldump --user=mysql_dump --password=iamdevops --default-character-set=utf8 mysql | gzip >> "$PATHOFBACKUPFILE"
echo "mysqldump finished at $(date +'%d-%m-%Y%H:%M:%S')">> "$LOG_FILE"

chown myuser "$PATHOFBACKUPFILE"
chown myuser "$LOG_FILE"
echo "file permission changed">> "$LOG_FILE"
find "$BACKUP_DIR" -name 'db_backup_'* -mtime +8 -exec rm '{}' \;
echo "old files deleted" >> "$LOG_FILE"
echo "operation finished at $(date +'%d-%m-%Y%H:%M:%s')">>"$LOG_FILE"
echo "********************************">> "$LOG_FILE"
exit 0
