#!/bin/bash
Files="$@"
Width="1920"
Height="1080"
ffmpegVer="4.0.2"
ffmpegOpt="ffmpeg-$ffmpegVer-opt"
echo "Files: $Files"
echo "Loop.."
for File in $Files
do
	echo "File: $File"
	Filename=$(basename "$File")
	Extension="${Filename##*.}"
	Plain="${Filename%.*}"
	NewNameMKV="$Plain (ffmpeg $ffmpegVer audio stereo mix v2 pcm TV).mkv"
	/opt/$ffmpegOpt/bin/ffmpeg -y -i $File -f matroska -vcodec copy -acodec pcm_f32le -ac 2 -af "pan=stereo|FL=FC+0.30*FL+0.30*BL|FR=FC+0.30*FR+0.30*BR" "$NewNameMKV"
done
