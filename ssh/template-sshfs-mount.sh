#!/bin/bash
IP="0.0.0.0"
Port="0"
Username="username"
RemotePath="/home/remote"
LocalPath="/home/local"
echo "ip: $IP port: $Port username: $Username"
echo "Remote Path: $RemotePath"
echo "Local Path: $LocalPath"
sshfs $Username@$IP:$RemotePath $LocalPath -p $Port -C
