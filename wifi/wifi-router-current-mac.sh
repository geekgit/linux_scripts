#!/bin/bash
WifiInterface=$(ip link show | grep mtu | awk -F: '{print $2}' | grep wlx | xargs)
RouterIP="192.168.1.1"
echo "WiFi Interface: ${WifiInterface}"
echo "Router IP: ${RouterIP}"
arping -c 1 -I "${WifiInterface}" "${RouterIP}"
