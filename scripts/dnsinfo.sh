#!/bin/bash
echo "Network DNS Info... "

ip=$(hostname -I)
echo "IP Address: $ip"
gateway=$(ip route | awk '/default/ { print $3 }')
echo -e "\nGateway Address: $gateway"
dns=$(grep "nameserver" /etc/resolv.conf | awk '{print $2}')
echo -e "\nDNS Server Address: $dns"
