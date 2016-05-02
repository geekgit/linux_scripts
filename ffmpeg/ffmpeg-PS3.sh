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
	NewName="PS3-$Plain.mp4"
	ffmpeg -y -i $File -vcodec libx264 -level 41 -crf 24 -acodec aac -strict experimental -ab 320k -ac 2 -ar 48000 $NewName
done
