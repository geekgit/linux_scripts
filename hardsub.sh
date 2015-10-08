#!/bin/bash
# usage ./hardsub.sh <mkv file with subs> <output>
# example ./hardsub.sh anime.mkv anime-hardsub.mp4
# ! zero step: apt-get install handbrake-cli
Video="$1"
OutputFile="$2"
HandBrakeCLI -i "$Video" -o "$OutputFile" -e x264 -q 20 -B 320 --x264-preset veryfast --x264-tune animation -r 23.976 -O --subtitle 1 --subtitle-burn 1 --srt-codeset utf8
