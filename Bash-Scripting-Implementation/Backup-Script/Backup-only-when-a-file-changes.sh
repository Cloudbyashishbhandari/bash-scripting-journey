SOURCE_FILE=./Backup-only-when-a-file-changes.sh
BACKUP_FILE=./Backup-file.sh
while inotifywait -e modify $SOURCE_FILE; do
    cp $SOURCE_FILE $BACKUP_FILE;
    echo "Backup completed at $(date)";
done