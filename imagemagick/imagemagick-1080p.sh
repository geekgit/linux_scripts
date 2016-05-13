#!/bin/bash
Files="$@"
Resolution="1920x1080"
echo "Files: $Files"
echo "Loop.."
for File in $Files
do
	echo "File: $File"
	Filename=$(basename "$File")
	Extension="${Filename##*.}"
	Plain="${Filename%.*}"
	NewName="1080p-$Plain.jpg"
	convert -resize $Resolution $File -background none -gravity center -extent $Resolution $NewName
done
