#!/bin/bash
#This script generates a timestamp, uptime information, available memory/memory usage, and network device identification.

echo -e 'Date/Time'
date
echo -e '\nUptime/Online Users/Load Average'
uptime
echo -e '\nMemory Data'
free -m
echo -e '\nNetwork Device Data'
ip a
