#!/bin/bash
# 6000
RemotePort="$1"
# TCP
Protocol="$2"
upnpc -d "$RemotePort" "$Protocol"
