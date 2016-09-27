#!/bin/bash
Server="$1"
echo "Server: $Server"
Cmd="letsencrypt certonly --standalone --standalone-supported-challenges http-01 --http-01-port 9999 -d $Server"
echo "$Cmd"
"$Cmd"
