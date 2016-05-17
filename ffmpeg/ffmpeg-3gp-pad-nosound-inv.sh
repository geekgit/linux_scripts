#!/bin/bash
Files="$@"
echo "Files: $Files"
echo "Loop.."
Width="352"
Height="288"
for File in $Files
do
	echo "File: $File"
	Filename=$(basename "$File")
	Extension="${Filename##*.}"
	Plain="${Filename%.*}"
	NewNamePad="$Plain-pad.3gp"
	ffmpeg -y -i $File -r 20 -b 400k -an -vf "scale=iw*min($Width/iw\,$Height/ih):ih*min($Width/iw\,$Height/ih), pad=$Width:$Height:($Width-iw*min($Width/iw\,$Height/ih))/2:($Height-ih*min($Width/iw\,$Height/ih))/2" "$NewNamePad"
done
