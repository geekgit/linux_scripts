#!/bin/bash
File="$1"
Subtitle=$(echo $File | sed 's/mkv/ass/g')
ffmpeg -i $File -i $Subtitle -c:v copy -c:a copy -c:t copy -c:s copy -c:d copy -f matroska "softsub_$File"

