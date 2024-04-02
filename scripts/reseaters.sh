#!/bin/bash

echo "Top 10 CPU Consuming Processes (presently running): "
ps -eo pid,%cpu,args | sort -k 2 -r | head -n 11

echo -e "\nTop 10 Memory Consuming Processes (presently running): "
ps -eo pid,%mem,args | sort -k 2 -r | head -n 11
