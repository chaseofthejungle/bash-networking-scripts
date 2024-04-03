#!/bin/bash

# User defines command and its frequency of execution
read -p "Which command do you want to run at an interval? " comm
comm_to_run=$(which $comm)
read -p "Enter interval for command execution frequency [m h dom mon dow]: " interval

# Add command to cron table for regular execution
(crontab -l ; echo "$interval $comm_to_run") | sort - | uniq - | crontab -
echo "Task added to cron table. Command will execute at an interval of $interval"
