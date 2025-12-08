#!/bin/bash
LOGFILE="/root/cs1500advices/marcus.walker.advices"
NOW=$(/usr/bin/date "+%Y-%m-%d %H:%M:%S")
ADVICE=$(/usr/bin/curl -s https://api.adviceslip.com/advice | /usr/bin/jq -r '.slip.advice')
echo "$NOW - $ADVICE" >> "$LOGFILE"

