#!/bin/bash

while [ -z "$(ip addr show eth0 | grep 'inet ' | awk '{print $2}' | cut -d/ -f1)" ]; 
do 
echo "An IP address has not yet been assigned to interface eth0."
sleep 5 
done

echo -e "\nAn IP address has been assigned to interface eth0."
