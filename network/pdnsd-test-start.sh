#!/bin/bash
LogFile="/var/log/pdnsd-test.log"
echo "Date: $(date)" &>> "$LogFile"
nohup pdnsd -4 -s -g &>> "$LogFile"
