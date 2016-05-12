#!/bin/bash
Files="$@"
Resolution="176x220"
echo "Files: $Files"
echo "Loop.."
for File in $Files
do
	echo "File: $File"
	Filename=$(basename "$File")
	Extension="${Filename##*.}"
	Plain="${Filename%.*}"
	NewName="mobile-$Plain.jpg"
	convert -resize $Resolution $File -background none -gravity center -extent $Resolution $NewName
done
