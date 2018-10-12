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
	NewName="$Plain (ffmpeg $ffmpegVer xvid low 43 TV).avi"
	NewNameMKV="$Plain (ffmpeg $ffmpegVer xvid low 43 TV).mkv"
	/opt/$ffmpegOpt/bin/ffmpeg -y -i $File -sn -c:a libmp3lame -ar 48000 -ab 128k -ac 2 -c:v libxvid -crf 24 -vtag DIVX -vf scale=640:480 -aspect 4:3 -mbd rd -flags +mv4+aic -trellis 2 -cmp 2 -subcmp 2 -g 30 -vb 1500k "$NewName"
	/opt/$ffmpegOpt/bin/ffmpeg -i "$NewName" -f matroska -vcodec copy -acodec copy "$NewNameMKV"
done
