#!/bin/bash
#usage ./temp-conky-script.sh "temp1"
TempID="$1"
Data=$(sensors | grep "$TempID" | sed 's/.*://')
echo $Data
