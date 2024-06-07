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
	NewNameCrop="${Plain}-crop.${Extension}"
	Random="$(uuidgen)"
	LogName="vfcrop_log_${Random}.txt"
	CropName="crop_${Random}.txt"
	ffmpeg -i "${File}" -vf cropdetect -f null - 2>"${LogName}"
	cat "${LogName}"| grep Parsed_cropdetect | awk '{print $15}' | sort | uniq | sort | grep "crop=" > "${CropName}"
	Crop=$(cat "${CropName}" | head)
	ffmpeg -i "${File}" -vf "${Crop}" -acodec copy "${NewNameCrop}"
done
