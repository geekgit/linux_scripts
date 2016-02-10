#!/bin/bash
for File in *.mp4
do
    ffmpeg -i "$File" -vn -ar 44100 -ac 2 -ab 320k -f mp3 "$File.mp3"
done
