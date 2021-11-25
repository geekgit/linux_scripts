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
	NewName="$Plain (ffmpeg $ffmpegVer nvenc TV snd).mp4"
	NewNameMKV="$Plain (ffmpeg $ffmpegVer nvenc TV snd).mkv"
	/opt/$ffmpegOpt/bin/ffmpeg -y -i $File -vcodec nvenc_h264 -pix_fmt yuv420p -acodec copy "$NewName"
	/opt/$ffmpegOpt/bin/ffmpeg -i "$NewName" -f matroska -vcodec copy -acodec copy "$NewNameMKV"
done
