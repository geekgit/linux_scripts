#!/bin/bash
Url="$@"
while true
do
	echo "$Url"
	mpv "$Url"
	echo "Another loop"
done
