#!/bin/bash

LOG_DIR="/home/kali/Coding/challenges/challenges24-05/logs"
ARCHIVE_DIR="/home/kali/Coding/challenges/challenges24-05/archive"

# Create archive directory if it does not exist
mkdir -p "$ARCHIVE_DIR"

# Move log files older than a day to the archive directory
find "$LOG_DIR" -type f -name "*.log" -mtime +1 -exec mv {} "$ARCHIVE_DIR" \;

# Create a tar archive of the moved log files
tar -czvf "$ARCHIVE_DIR/logs_$(date +%Y%m%d).tar.gz" -C "$ARCHIVE_DIR" .

# Remove the original moved log files after archiving
find "$ARCHIVE_DIR" -type f -name "*.log" -delete
