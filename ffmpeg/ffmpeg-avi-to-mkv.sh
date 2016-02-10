#!/bin/bash
Files="$@"
echo "Files: $Files"
echo "Loop.."
for File in $Files
do
	echo "File: $File"
	Filename=$(basename "$File")
	Extension="${Filename##*.}"
	Plain="${Filename%.*}"
	NewName="$Plain.mkv"
	ffmpeg -fflags +genpts -i $File -vcodec copy -acodec copy -f matroska $NewName
done
