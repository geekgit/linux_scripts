#!/bin/bash
Url="$1"
Artist="$2"
Title="$3"
echo "URL: $Url"
echo "Artist: $Artist"
echo "Title: $Title"
BestAudioTrack=$(youtube-dl -F $Url | grep "audio only" | sort -k 7 -n | tail -n 1)
echo "Best audio track:"
echo "$BestAudioTrack"
ID=$(echo "$BestAudioTrack" | awk '{print $1}')
echo "ID: $ID"
UUID=$(uuidgen)
youtube-dl "$Url" -f "$ID" -o "$UUID.%(ext)s"
File=$(find . -type f 2>/dev/null | grep "$UUID")
echo "$File"
UUID2=$(uuidgen)
ffmpeg -i "$File" -vn -ar 44100 -ac 2 -ab 320k -f mp3 -metadata artist="$Artist" -metadata title="$Title" "$UUID2.mp3"
rm "$File"
