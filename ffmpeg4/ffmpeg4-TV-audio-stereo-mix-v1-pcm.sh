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
	NewNameMKV="$Plain (ffmpeg $ffmpegVer audio stereo mix v1 pcm TV).mkv"
	/opt/$ffmpegOpt/bin/ffmpeg -y -i $File -f matroska -vcodec copy -acodec pcm_f32le -ac 2 -af "pan=stereo|FL<1.0*FL+0.707*FC+0.707*BL|FR<1.0*FR+0.707*FC+0.707*BR" "$NewNameMKV"
done
