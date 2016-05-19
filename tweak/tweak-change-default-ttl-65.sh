#!/bin/bash
NewTTL="65"
CurrentTTL=$(sudo cat /proc/sys/net/ipv4/ip_default_ttl)
echo "Current TTL: $CurrentTTL"
echo "New TTL: $NewTTL"
sudo echo "$NewTTL" > /proc/sys/net/ipv4/ip_default_ttl
