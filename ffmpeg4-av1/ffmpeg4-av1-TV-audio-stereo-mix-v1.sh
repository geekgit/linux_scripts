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
	NewName="$Plain (ffmpeg $ffmpegVer audio stereo mix v1 TV).mp4"
	NewNameMKV="$Plain (ffmpeg $ffmpegVer audio stereo mix v1 TV).mkv"
	/opt/$ffmpegOpt/bin/ffmpeg -y -i $File -vcodec copy -acodec aac -strict experimental -ab 320k -ac 2 -ar 48000 -af "pan=stereo|FL<1.0*FL+0.707*FC+0.707*BL|FR<1.0*FR+0.707*FC+0.707*BR" "$NewName"
	/opt/$ffmpegOpt/bin/ffmpeg -i "$NewName" -f matroska -vcodec copy -acodec copy "$NewNameMKV"
done
