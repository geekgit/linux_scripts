#!/bin/bash
Files="$@"
Width="1280"
Height="720"
echo "Files: $Files"
echo "Loop.."
for File in $Files
do
	echo "File: $File"
	Filename=$(basename "$File")
	Extension="${Filename##*.}"
	Plain="${Filename%.*}"
	NewName="Tablet-$Plain.mp4"
	ffmpeg -y -i $File -vcodec libx264 -pix_fmt yuv420p -preset slow -crf 22 -profile:v high -level:v 4.0 -r 24 -vf "scale=iw*min($Width/iw\,$Height/ih):ih*min($Width/iw\,$Height/ih), pad=$Width:$Height:($Width-iw*min($Width/iw\,$Height/ih))/2:($Height-ih*min($Width/iw\,$Height/ih))/2" -acodec aac -strict experimental -ab 320k -ac 2 -ar 48000 $NewName
done
