#!/bin/bash
# ============================================
# Script 4: Log File Analyzer
# ============================================

# Student Details 
echo "===== Student Details ====="
echo "Name: Danika Puri "
echo "Roll No: 24BOE10037"
echo ""

# Usage: ./script4_log_analyzer.sh /var/log/syslog error

LOGFILE=$1
KEYWORD=${2:-"error"}   # Default keyword is 'error'
COUNT=0

# Check if file exists
if [ ! -f "$LOGFILE" ]; then
    echo "Error: File $LOGFILE not found."
    exit 1
fi

# Do-while style retry if file is empty
ATTEMPT=1

while true; do
    if [ -s "$LOGFILE" ]; then
        break
    else
        echo "File is empty. Retrying... (Attempt $ATTEMPT)"
        sleep 1
        ATTEMPT=$((ATTEMPT + 1))

        # Stop after 3 attempts
        if [ $ATTEMPT -gt 3 ]; then
            echo "File is still empty after multiple attempts."
            break
        fi
    fi
done

# Read file line by line
while IFS= read -r LINE; do
    if echo "$LINE" | grep -iq "$KEYWORD"; then
        COUNT=$((COUNT + 1))
    fi
done < "$LOGFILE"

echo ""
echo "Keyword '$KEYWORD' found $COUNT times in $LOGFILE"

# Show last 5 matching lines
echo ""
echo "Last 5 matching lines:"
grep -i "$KEYWORD" "$LOGFILE" | tail -n 5
