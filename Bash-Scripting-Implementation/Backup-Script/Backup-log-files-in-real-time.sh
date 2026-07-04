SOURCE_FILE=./application.log
BACKUP_FILE=./logs-backup-file.txt
while true; do
    tail -f $SOURCE_FILE | while read Line; do
        echo "$Line" >> "$BACKUP_FILE";
        sleep 6;
    done
done
