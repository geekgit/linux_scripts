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
	NewName="$Plain.mp3"
	ffmpeg -i "$File" -vn -ar 44100 -ac 2 -ab 320k -f mp3 "NewName"
done
