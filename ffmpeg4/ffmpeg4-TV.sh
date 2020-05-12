#!/bin/bash
Files="$@"
Width="1920"
Height="1080"
ffmpegVer="4.2.2"
ffmpegOpt="ffmpeg-$ffmpegVer-opt"
echo "Files: $Files"
echo "Loop.."
for File in $Files
do
	echo "File: $File"
	Filename=$(basename "$File")
	Extension="${Filename##*.}"
	Plain="${Filename%.*}"
	NewName="$Plain (ffmpeg $ffmpegVer nvenc TV).mp4"
	NewNameMKV="$Plain (ffmpeg $ffmpegVer nvenc TV).mkv"
	/opt/$ffmpegOpt/bin/ffmpeg -y -i $File -vcodec nvenc_h264 -pix_fmt yuv420p -acodec aac -strict experimental -ab 320k -ac 2 -ar 48000 "$NewName"
	/opt/$ffmpegOpt/bin/ffmpeg -i "$NewName" -f matroska -vcodec copy -acodec copy "$NewNameMKV"
done
