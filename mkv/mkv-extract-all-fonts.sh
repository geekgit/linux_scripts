#!/bin/bash
function CountTrueTypeFonts
{
	mkvmerge -i --ui-language en_US "$File" | grep "application/x-truetype-font" | wc -l
}
function CountOpenTypeFonts
{
	mkvmerge -i --ui-language en_US "$File" | grep "application/vnd.ms-opentype" | wc -l
}
function GetTrueTypeFontsID
{
	mkvmerge -i --ui-language en_US "$File" | grep "application/x-truetype-font" | awk -F: '{print $1'} | awk '{print $3}' | tr "\n" " "
}
function GetOpenTypeFontsID
{
	mkvmerge -i --ui-language en_US "$File" | grep "application/vnd.ms-opentype" | awk -F: '{print $1'} | awk '{print $3}' | tr "\n" " "
}
File="$1"
echo "File: $File"
echo "TrueType fonts: $(CountTrueTypeFonts)"
TrueTypeID=$(GetTrueTypeFontsID)
echo "TrueType fonts ID: $TrueTypeID"
echo "OpenType fonts: $(CountOpenTypeFonts)"
OpenTypeID=$(GetOpenTypeFontsID)
echo "OpenType fonts ID: $OpenTypeID"

for ttf in $TrueTypeID
do
	echo "ttf id: $ttf"
	mkvextract attachments "$File" "$ttf"
done

for otf in $OpenTypeID
do
	echo "otf id: $otf"
	mkvextract attachments "$File" "$otf"
done
