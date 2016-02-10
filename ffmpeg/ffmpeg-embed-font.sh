#!/bin/bash
File="$1"
cd Fonts
Data=$(ls)
Dump=""
for D in $Data
do
  Line="-attach ./Fonts/$D -metadata:s:t mimetype=application/x-truetype-font"
  Dump="$Dump $Line"
done
echo "Dump: $Dump"
cd ..
ffmpeg -i $File -vcodec copy -acodec copy -f matroska $Dump "embed_$File"

