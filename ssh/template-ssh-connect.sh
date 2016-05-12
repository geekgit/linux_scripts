#!/bin/bash
IP="0.0.0.0"
Port="0"
Username="username"
echo "ip: $IP port: $Port username: $Username"
ssh -X "$IP" -p "$Port" -l "$Username"
