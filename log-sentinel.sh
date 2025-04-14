#!/bin/bash

LOG_FILE="/var/log/syslog"
KEYWORDS=("ERROR" "FAIL" "WARNING")
OUTPUT_FILE="$HOME/log_alerts.txt"

touch "$OUTPUT_FILE"
echo "Monitoring log file: $LOG_FILE"
echo "Matched log entries will be stored in: $OUTPUT_FILE"
echo "---------------------------------------"

tail -Fn0 "$LOG_FILE" | while read line; do
    for keyword in "${KEYWORDS[@]}"; do
        if echo "$line" | grep -iq "$keyword"; then
            echo "$(date) | $line" >> "$OUTPUT_FILE"
            echo "[MATCHED] $line"
        fi
    done
done
