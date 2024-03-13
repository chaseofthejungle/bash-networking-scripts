#!/bin/bash
# This script lists out activity of a user account.

echo "\n User Account Activity"
echo "Enter a Username:"
read username

echo "\n Recent Login Activity:"
last | grep $username

echo "\n User Home Directory Modifications:"
auditctl -w /home/$username

echo "\n Sudo Command Requests:"
cat /var/log/auth.log | grep sudo | grep $username
