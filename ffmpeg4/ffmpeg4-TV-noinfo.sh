#!/bin/bash
Files="$@"
Width="1920"
Height="1080"
ffmpegVer="4.0.2"
ffmpegOpt="ffmpeg-$ffmpegVer-opt"
for File in $Files
do
	Filename=$(basename "$File")
	Extension="${Filename##*.}"
	Plain="${Filename%.*}"
	NewName="$Plain (ffmpeg $ffmpegVer nvenc TV).mp4"
	NewNameMKV="$Plain (ffmpeg $ffmpegVer nvenc TV).mkv"
	/opt/$ffmpegOpt/bin/ffmpeg -y -i $File -vcodec nvenc_h264 -pix_fmt yuv420p -acodec aac -strict experimental -ab 320k -ac 2 -ar 48000 "$NewName" -loglevel panic -hide_banner -nostats 1>/dev/null 2>/dev/null
	/opt/$ffmpegOpt/bin/ffmpeg -i "$NewName" -f matroska -vcodec copy -acodec copy "$NewNameMKV" -loglevel panic -hide_banner -nostats 1>/dev/null 2>/dev/null
done
