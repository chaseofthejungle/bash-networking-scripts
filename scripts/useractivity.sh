#!/bin/bash
# This script lists out activity of a user account.

echo -e 'User Account Activity'
echo 'Enter a Username:'
read username

echo -e '\nRecent Login Activity:'
last | grep $username

echo -e '\nUser Home Directory Modifications:'
auditctl -w /home/$username

echo -e '\nSudo Command Requests:'
cat /var/log/auth.log | grep sudo | grep $username
