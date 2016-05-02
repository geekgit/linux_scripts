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
	NewName="share-$Plain.mp4"
	ffmpeg -y -i $File -vcodec libx264 -pix_fmt yuv420p -preset slow -crf 22 -profile:v high -level:v 4.0 -r 24 -vf "pad=ih*16/9:ih:(ow-iw)/2:(oh-ih)/2,scale=1280:720" -acodec aac -strict experimental -ab 320k -ac 2 -ar 48000 $NewName
done
