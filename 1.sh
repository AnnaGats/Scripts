#! /bin/bash

#Write a script that upon invocation shows the time and date, lists all logged-in users, and gives the system uptime. The script then saves this information to a logfile.

exec &> logfile.txt

now=$(date +"%T")
echo "Current time : $now"

DATE=`date +%Y-%m-%d`
echo "Current date : $DATE"


users=$(users | xargs -n1 | sort -u)
echo "Logged-in users : $users"

uptime=$(uptime | awk '{print $3}')
echo "System uptime : $uptime days"
