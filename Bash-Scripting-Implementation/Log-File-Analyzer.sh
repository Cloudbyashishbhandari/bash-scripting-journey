SYSTEM_LOGS="system.log"
PROBLUMS=("ERROR" "FATAL" "CRITICAL")
for LOG_FILE in "${PROBLUMS[@]}"; do
    echo "Searching for $LOG_FILE in $SYSTEM_LOGS"
    ERROR_COUNT=$(grep -c "$LOG_FILE" "$SYSTEM_LOGS")
    echo "$LOG_FILE" COUNT: "$ERROR_COUNT"
done  
    echo "Total lines in $SYSTEM_LOGS:" $(wc -l "$SYSTEM_LOGS")