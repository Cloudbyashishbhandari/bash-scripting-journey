#!/bin/bash

LOG_DIR="/root/logs"
APP_DIR="application.logs"
SYS_DIR="system.logs"
PRO="ERROR"

echo "Array Variabls"
PROBLUM=("ERROR" "FATAL" "CRITICAL")
echo "============================================"
echo -e "\nused for better formating and readablity"
echo "============================================"
echo "==========================================="
echo "use absoulte (/root/logs) when script file is in different folder"
find /root/logs -name "*.log" -mtime -2

echo "when using logs"
find $LOG_DIR -name "*.log" -mtime -2

echo "when using logs"
grep $PRO $APP_DIR

echo "use of array variable"
grep -c "${PROBLUM[-1]}" $APP_DIR
grep "${PROBLUM[0]}" $SYS_DIR

grep "ERROR" application.log
echo " use absoulte when file is in different folder"
grep "ERROR" /root/logs/system.log