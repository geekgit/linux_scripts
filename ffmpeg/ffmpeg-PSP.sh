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
	NewName="PSP-$Plain.mp4"
	ffmpeg -y -i $File -profile:v main -level 3 -x264opts ref=3:b-pyramid=none:weightp=1 -acodec aac -strict experimental -ab 320k -ac 2 -ar 48000 $NewName
done
