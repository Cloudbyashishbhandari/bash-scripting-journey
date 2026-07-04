SOURCE_FILE="./Backup-a-single-file.sh"
BACKUP_FILE="./Backup-file.sh"
while true; do
    cp $SOURCE_FILE $BACKUP_FILE;
    USAGE=$(df -h | grep /dev/sda | awk 'NR==2 {print $5 }' | sed 's/%//')
    if [ $USAGE -gt 80 ]; then
        echo "Disk usage is above 80%."
        break
    else
        echo "Backup completed at $(date)";
    fi
    
    sleep 60;
done