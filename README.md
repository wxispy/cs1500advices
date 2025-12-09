README – CS1500 Automatic Advice System

Project Overview

This project is an automated advice collection system for CS1500. A Bash script retrieves a random advice message from the Advice Slip JSON API and appends it to a log file along with the current date and time. The script runs automatically every hour using a cron job. For testing purposes, it can also be scheduled to run every minute.

Features

Fetches random advice using the API:
https://api.adviceslip.com/advice
Uses curl to request data.
Uses jq to extract the advice text from JSON.
Logs advice entries with a timestamp.
Automatically schedules data collection using cron.
Stores all results in a readable log file:
marcus.walker.advices
Version controlled using Git & GitHub.
Files Included
get_advice.sh
marcus.walker.advices
README.md
Server Systems_Project (Report)
How It Works

1. Make the script executable

chmod +x /root/cs1500advices/get_advice.sh

2. Run the script manually

/root/cs1500advices/get_advice.sh

cat /root/cs1500advices/marcus.walker.advices

3. Set the cron job

Every minute (testing)

(crontab -l 2>/dev/null; echo "* * * * * /root/cs1500advices/get_advice.sh") | crontab -

Every hour (final requirement)

(crontab -l 2>/dev/null; echo "0 * * * * /root/cs1500advices/get_advice.sh") | crontab -

4. Confirm cron is installed

crontab -l

5. View the log file updating

tail -f /root/cs1500advices/marcus.walker,advices

Technologies Used

Bash Scripting
curl (API requests)
jq (JSON parsing)
cron (task scheduling)
Git & GitHub
API Used

Advice Slip API
https://api.adviceslip.com/

Author

Marcus Walker
