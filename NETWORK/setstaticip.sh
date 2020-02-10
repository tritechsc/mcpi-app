#!/bin/bash
# Run this as a root user (sudo -i on a rpi)
dhclient wlan0;
ifconfig wlan0 192.168.7.??? netmask 255.255.255.0;
rm -f /etc/resolv.conf;
touch /etc/resolv.conf;
echo "nameserver 192.168.7.1" > /etc/resolv.conf;
echo "nameserver 8.8.8.8" >> /etc/resolv.conf;
echo "nameserver 10.40.0.14" >> /etc/resolv.conf;

