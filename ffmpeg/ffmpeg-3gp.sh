#!/bin/bash
Files="$@"
echo "Files: $Files"
echo "Loop.."
for File in $Files
do
	echo "File: $File"
	Filename=$(basename "$File")
	Extension="${Filename##*.}"
	Plain="${Filename%.*}"
	NewName144="$Plain-144.3gp"
	NewName288="$Plain-288.3gp"
	ffmpeg -y -i $File -r 20 -s 176x144 -b 200k -acodec aac -strict experimental -ac 1 -ar 8000 -ab 24k "$NewName144"
	ffmpeg -y -i $File -r 20 -s 352x288 -b 400k -acodec aac -strict experimental -ac 1 -ar 8000 -ab 24k "$NewName288"
done
