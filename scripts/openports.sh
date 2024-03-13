#!/bin/bash
#This script lists out open ports on a host device. The port range below (1-1023) can be adjusted as desired.

echo "Enter Target Hostname or IP Address:"
read target_ip

echo "\n Open Ports discovered on $target_ip :"
nc -zv $target_ip 1-1023 2>&1 | grep succeeded
