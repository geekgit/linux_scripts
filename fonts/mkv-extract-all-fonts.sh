#!/bin/bash
function CountFonts
{
	echo "$(mkvmerge -i --ui-language en_US "$File" | grep Attachment | grep font | wc -l)"
}
function GetFontsID
{
	mkvmerge -i --ui-language en_US "$File" | grep Attachment | grep font | awk -F: '{print $1'} | awk '{print $3}' | tr "\n" " "
}
File="$1"
echo "File: $File"
echo "Fonts: $(CountFonts)"
ID=$(GetFontsID)
echo "Fonts ID: $ID"
for FontID in $ID
do
	echo "Font ID: $FontID"
	mkvextract attachments "$File" "$FontID"
done
