#!/bin/bash

user_name=$(whoami)
echo "-----Welcome $user_name -----"
echo ""

cur_date=$(date)
echo "Current Date & Time: $cur_date"
echo ""

echo "Server Uptime:"
uptime -p
echo ""

echo "Last Logins:"
last -n 5 | head -n 5
echo ""

echo "Disk Space:"
df -h
echo ""

echo "Ram Utilization:"
free -h
echo ""

echo "Top 5 CPU-Consuming Processes:"
ps -eo pid,ppid,cmd,%mem,%cpu --sort=-%cpu | head -n 6
echo ""

echo "---Have a Nice Day---"


