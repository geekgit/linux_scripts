#!/bin/bash
Files="$@"
echo "Files: $Files"
echo "Loop.."
for File in $Files
do
	echo "File: $File"
	Filename=$(basename "$File")
	geekgit-ffmpeg4-TV-audio-stereo-mix-v1 "$Filename"
	geekgit-ffmpeg4-TV-audio-stereo-mix-v2 "$Filename"
done
