#!/bin/bash
Files="$@"
Width="1920"
Height="1080"
ffmpegVer="4.2.2"
ffmpegOpt="ffmpeg-$ffmpegVer-av1-opt"
echo "Files: $Files"
echo "Loop.."
for File in $Files
do
	echo "File: $File"
	Filename=$(basename "$File")
	Extension="${Filename##*.}"
	Plain="${Filename%.*}"
	NewName="$Plain (ffmpeg $ffmpegVer xvid TV).avi"
	NewNameMKV="$Plain (ffmpeg $ffmpegVer xvid TV).mkv"
	/opt/$ffmpegOpt/bin/ffmpeg -y -i $File -c:v mpeg4 -vtag xvid -c:a libmp3lame -ar 48000 -ab 128k -ac 2 "$NewName"
	/opt/$ffmpegOpt/bin/ffmpeg -i "$NewName" -f matroska -vcodec copy -acodec copy "$NewNameMKV"
done
