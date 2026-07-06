LOG_FILE=$(find . -name "*.log" -type f -mtime -2);
for LOG in $LOG_FILE; do
    echo -e "\nDeleting: ${LOG}"
    echo " ${LOG}" | xargs -0 rm -f 
done