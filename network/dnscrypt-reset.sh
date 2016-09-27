#!/bin/bash
echo "pkill -f dnscrypt-proxy"
pkill -f dnscrypt-proxy
echo "nohup dnscrypt-start &>/dev/null &"
sudo nohup dnscrypt-start &>/dev/null &
