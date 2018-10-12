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
	NewName="$Plain (ffmpeg $ffmpegVer audio stereo mix v2 TV).mp4"
	NewNameMKV="$Plain (ffmpeg $ffmpegVer audio stereo mix v2 TV).mkv"
	/opt/$ffmpegOpt/bin/ffmpeg -y -i $File -vcodec copy -acodec pcm_f32le -ac 2 -af "pan=stereo|FL=FC+0.30*FL+0.30*BL|FR=FC+0.30*FR+0.30*BR" "$NewName"
	/opt/$ffmpegOpt/bin/ffmpeg -i "$NewName" -f matroska -vcodec copy -acodec copy "$NewNameMKV"
done
