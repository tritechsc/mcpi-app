#!/bin/bash
ifconfig wlan0 192.168.7.???? netmask 255.255.255.0;
rm -f /etc/resolv.conf;
touch /etc/resolve.conf;
echo "nameserver 192.168.7.1" > /etc/resolv.conf;

