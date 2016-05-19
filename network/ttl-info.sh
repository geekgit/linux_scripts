#!/bin/bash
TTL=$(sudo cat /proc/sys/net/ipv4/ip_default_ttl)
echo "TTL: $TTL"
