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
	NewName="PS3-$Plain-snd.mp4"
	ffmpeg -y -i $File -vcodec nvenc_h264 -level 41 -crf 24 -acodec copy $NewName
done
