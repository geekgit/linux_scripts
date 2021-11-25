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
	NewName="TV-$Plain-snd.mkv"
	ffmpeg -i $File -vcodec libx264 -pix_fmt yuv420p -preset slow -crf 22 -profile:v high -level:v 4.0 -acodec copy -f matroska $NewName
done
