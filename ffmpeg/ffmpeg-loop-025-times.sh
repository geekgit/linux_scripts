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
	NewName="025loop-$Plain.$Extension"
	UUID=$(uuidgen)
	ListFile="loop-list-$UUID.txt"
	
	echo "file '$File'" > $ListFile
	for ((i=1;i<25;++i))
	do
		echo "file '$File'" >> $ListFile
	done
	echo "concat list file..."	
	cat $ListFile
	
	ffmpeg -f concat -i "$ListFile" -c copy "$NewName"
	
	rm "$ListFile"
done
