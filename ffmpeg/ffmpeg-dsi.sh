#!/bin/bash
# Source: https://gbatemp.net/threads/mpeg4-player-for-ds-and-dsi.544095/
Files="$@"
echo "Files: $Files"
echo "Loop.."
for File in $Files
do
	echo "File: $File"
	Filename=$(basename "$File")
	Extension="${Filename##*.}"
	Plain="${Filename%.*}"
	NewName="dsi-$Plain.mp4"
	ffmpeg -i $File -f mp4 -s 256x144 -vf "colorspace=space=ycgco:primaries=bt709:trc=bt709:range=pc:iprimaries=bt709:iall=bt709" -dst_range 1 -color_range 2 -vcodec mpeg4 -profile:v 0 -level 8 -b:v 500000 -acodec aac -ar 32000 -b:a 128000 -ac 1 -slices 1 -g 50 $NewName
done

