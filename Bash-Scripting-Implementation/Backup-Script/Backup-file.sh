SOURCE_FILE="./Backup-a-single-file.sh"
BACKUP_FILE="./Backup-file.sh"
while true; do
    cp $SOURCE_FILE $BACKUP_FILE;
    echo "Backup ashish compleated at $(date)";
    sleep 4;
done