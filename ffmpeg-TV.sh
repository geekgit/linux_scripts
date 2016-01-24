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
	NewName="conv-$Plain.mkv"
	ffmpeg -i $File -vcodec libx264 -preset slow -crf 22 -profile:v high -level:v 4.0 -acodec libmp3lame -ab 320k -f matroska $NewName
done
