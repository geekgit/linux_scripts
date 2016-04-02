#!/bin/bash
File="$1"
Url="$2"
App="$3"
Key="$4"
Server="rtmp://$Url/$App/$Key"
echo "File: $File"
echo "Server: $Server"
ffmpeg -re -i "$File" -c:v libx264 -c:a libfaac -ar 44100 -ac 2 -f flv "$Server"
