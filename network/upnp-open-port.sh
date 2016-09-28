#!/bin/bash
# 192.168.1.2
IPAddr="$1"
# 80
LocalPort="$2"
# 6000
RemotePort="$3"
# TCP
Protocol="$4"
upnpc -a "$IPAddr" "$LocalPort" "$RemotePort" "$Protocol"
