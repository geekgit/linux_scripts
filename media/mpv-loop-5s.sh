#!/bin/bash
Url="$@"
Timeout="5s"
while true
do
	echo "$Url"
	mpv "$Url"
	echo "Wait $Timeout..."
	sleep "$Timeout"
done
