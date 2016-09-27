#!/bin/bash
LogPath="$HOME/webp-to-png.txt"
InputFile="$1"
OutputFile="$InputFile.png"
echo "webp to png v 0.001" >> "$LogPath"
echo "Input: $InputFile" >> "$LogPath"
echo "Output: $OutputFile" >> "$LogPath"
dwebp "$InputFile" -o "$OutputFile" &>> "$LogPath"
