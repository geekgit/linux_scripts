#!/bin/bash
# zero step: install eyeD3 (sudo apt-get install eyeD3)
# first step: go to mp3 music dir (!)
# ===
# setup rights
echo setup rights
find . -type d -exec chmod a+rwx {} \;
find . -type f -exec chmod a+rw {} \;
read -p "[press enter]..."
#
echo "files to del:"
find . -name "*.txt" -type f
find . -name "*.TXT" -type f
find . -name "*.url" -type f
find . -name "*.URL" -type f
find . -name "*.jpg" -type f
find . -name "*.JPG" -type f
find . -name "*.jpeg" -type f
find . -name "*.JPEG" -type f
find . -name "*.png" -type f
find . -name "*.PNG" -type f
read -p "[press enter to delete]..."
find . -name "*.txt" -type f -delete
find . -name "*.TXT" -type f -delete
find . -name "*.url" -type f -delete
find . -name "*.URL" -type f -delete
find . -name "*.jpg" -type f -delete
find . -name "*.JPG" -type f -delete
find . -name "*.jpeg" -type f -delete
find . -name "*.JPEG" -type f -delete
find . -name "*.png" -type f -delete
find . -name "*.PNG" -type f -delete
# clean images in cover art
echo "music art del"
find . -name "*.mp3" -type f
find . -name "*.mp3" -type f -exec eyeD3 --remove-images {} \;
find . -name "*.MP3" -type f
find . -name "*.MP3" -type f -exec eyeD3 --remove-images {} \;

