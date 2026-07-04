#!/bin/bash
SOURCE_FILE=./ashish.txt
BACKUP_FILE=./logs-backup-file.txt
rsync -av --progress "$SOURCE_FILE" "$BACKUP_FILE"