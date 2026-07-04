#!/bin/bash

LOG_DIR="logs"
APP_DIR="application.logs"
SYS_DIR="system.logs"
PROBLUM=("ERROR" "FATAL" "CRITICAL")
REPORT_FILE=("logs/Report_analysis.txt")
LOG_FILES=$(find $LOG_DIR -name "*.log" -mtime -1)
for LOG_FILE in $LOG_FILES; do
    echo -e "\n" #>> ${REPORT_FILE}
    echo "========================================" # >> ${REPORT_FILE}
    echo "==============$LOG_FILE=================" #>> ${REPORT_FILE}
    echo "========================================" #>> ${REPORT_FILE}
    for PATTERN in ${PROBLUM[@]}; do
        echo "searching for $PATTERN: $LOG_FILE" #>> ${REPORT_FILE}
        grep  "$PATTERN" "$LOG_FILE" #>> ${REPORT_FILE}

        echo "Number of  $PATTERN: $LOG_FILE" #>> ${REPORT_FILE}
        grep -c "$PATTERN" "$LOG_FILE" #>> ${REPORT_FILE}
       
    done
     echo -e "\n"
    echo "========================================"      #>> ${REPORT_FILE}
    echo "==============$LOG_FILE "END"=================" #>> ${REPORT_FILE}
    echo "========================================"       #>> ${REPORT_FILE}
done
echo -e "\n Report analysis completed and the report is saved in ${REPORT_FILE}"