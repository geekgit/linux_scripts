#!/bin/bash
function CountAudioTracks
{
	echo "$(mkvmerge -i --ui-language en_US "$File" | grep audio | wc -l)"
}
function GetAudioID
{
	mkvmerge -i --ui-language en_US "$File" | grep audio | awk -F: '{print $1'} | awk '{print $3}' | tr "\n" " "
}
function GetFormats
{
	mkvmerge -i --ui-language en_US "$File" | grep audio | awk -F: '{print $2'} | awk '{print $2}' | sed 's/(//g' | sed 's/)//g' | awk -F/ '{print $1}' | tr "\n" " "
}
File="$1"
echo "File: $File"
Count="$(CountAudioTracks)"
echo "Audio tracks: $Count"
ID="$(GetAudioID)"
echo "Audio ID: $ID"
Formats="$(GetFormats)"
echo "Formats: $Formats"
for ((i = 1 ; i <= Count ; ++i))
do
	CurrID=$(echo $ID | cut -d " " -f $i)
	CurrFormat=$(echo $Formats | cut -d " " -f $i)
	echo "Track ID: $CurrID, Format: $CurrFormat"
	TrackFilename=$(echo "$CurrID.$CurrFormat" | tr '[:upper:]' '[:lower:]')
	echo "$TrackFilename"
	mkvextract tracks $File "$CurrID:$TrackFilename"
done
