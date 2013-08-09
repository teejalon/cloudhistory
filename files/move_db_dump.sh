#!/bin/sh
if [ $# -lt 1 ]
then
        echo "Usage : move_db_dump.sh <cloudname>"
        echo "gzips and scp it to yourbackupserver "
        exit 1
else
CLOUDNAME=$1
BACKUP_SERVER={{ backupserver }}
gzip -9 -f /tmp/cloudhistory$CLOUDNAME\.sql
scp /tmp/cloudhistory$CLOUDNAME\.sql.gz $BACKUP_SERVER\:/opt/cloudbackup/$CLOUDNAME
rm -f /tmp/cloudhistory$CLOUDNAME\.sql.gz
fi
