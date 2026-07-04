#!/bin/bash

LOG_DIR="logs"
APP_DIR="application.logs"
SYS_DIR="system.logs"
PROBLUM=("ERROR" "FATAL" "CRITICAL")
REPORT_FILE=("logs/Report_analysis.txt")
LOG_FILES=$(find $LOG_DIR -name "*.log" -mtime -1)     # command substitution
for LOG_FILE in $LOG_FILES; do
    echo -e "\n" #> ${REPORT_FILE}
    echo "========================================" #> ${REPORT_FILE}       # > THIS WILL OVERWRITE THE FILE
    echo "==============$LOG_FILE=================" #> ${REPORT_FILE}       # >> THIS WILL APPEND THE FILE
    echo "========================================" #> ${REPORT_FILE}
    for PATTERN in ${PROBLUM[@]}; do
        echo "searching for $PATTERN: $LOG_FILE" #> ${REPORT_FILE}

        ERROR_COUNT=$(grep -c "$PATTERN" "$LOG_FILE")
        echo "Count: $ERROR_COUNT" #> ${REPORT_FILE}
        if [ "$ERROR_COUNT" -gt 5 ]; then
            echo "There is problum in the log file $LOG_FILE" #> ${REPORT_FILE}
            
        else
            echo "NO problum in the log file $LOG_FILE" #> ${REPORT_FILE}
        fi
    done
     echo -e "\n"
    echo "========================================"      #> ${REPORT_FILE}
    echo "==============$LOG_FILE "END"=================" #> ${REPORT_FILE}
    echo "========================================"       #> ${REPORT_FILE}
done
echo -e "\n Report analysis completed and the report is saved in ${REPORT_FILE}"