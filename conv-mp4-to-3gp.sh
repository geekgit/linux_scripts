#!/bin/bash
for File in *.mp4
do
    ffmpeg -y -i $File -r 20 -s 352x288 -b 400k -acodec aac -strict experimental -ac 1 -ar 8000 -ab 24k $File-288.3gp
    ffmpeg -y -i $File -r 20 -s 176x144 -b 200k -acodec aac -strict experimental -ac 1 -ar 8000 -ab 24k $File-144.3gp
done
