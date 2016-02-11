#!/bin/bash
function CountSubtitlesTracks
{
	echo "$(mkvmerge -i --ui-language en_US "$File" | grep subtitles | wc -l)"
}
function CountSRT
{
	echo "$(mkvmerge -i --ui-language en_US "$File" | grep subtitles | grep SRT | wc -l)"
}
function CountSSA
{
	echo "$(mkvmerge -i --ui-language en_US "$File" | grep subtitles | grep SubStationAlpha | wc -l)"
}
function GetSubtitlesID
{
	mkvmerge -i --ui-language en_US "$File" | grep subtitles | awk -F: '{print $1'} | awk '{print $3}' | tr "\n" " "
}
function GetSrtID
{
	mkvmerge -i --ui-language en_US "$File" | grep subtitles | grep SRT | awk -F: '{print $1'} | awk '{print $3}' | tr "\n" " "
}
function GetSsaID
{
	mkvmerge -i --ui-language en_US "$File" | grep subtitles | grep SubStationAlpha | awk -F: '{print $1'} | awk '{print $3}' | tr "\n" " "
}
function SSAProcess
{
	SSAFile="$1"
	echo "SSA file: $SSAFile"
	SSAVersion=$(cat $SSAFile | grep "ScriptType" | awk -F: {'print $2'} | awk {'print $1'})
	EchoBlue "SSA Version: $SSAVersion"
	cat $SSAFile | grep "V4 Styles" &> /dev/null
	Version4Styles=$?
	cat $SSAFile | grep "V4+ Styles" &> /dev/null
	Version4PlusStyles=$?
	cat $SSAFile | grep "This is a script for SSA v2" &> /dev/null
	Version2or3Text=$?
	cat $SSAFile | grep "This is a Sub Station Alpha v1.x script." &> /dev/null
	Version1Text=$?

	if [ "$Version4Styles" -eq "0" ]; then
		EchoGreen "Version 4 Styles: yes"
	else
		EchoRed "Version 4 Styles: no"
	fi
	
	if [ "$Version4PlusStyles" -eq "0" ]; then
		EchoGreen "Version 4+ Styles (ass): yes"
	else
		EchoRed "Version 4+ Styles (ass): no"
	fi
	
	if [ "$Version2or3Text" -eq "0" ]; then
		EchoGreen "SSA v2 or SSA v3 text: yes"
	else
		EchoRed "SSA v2 or SSA v3 text: no"
	fi
	
	if [ "$Version1Text" -eq "0" ]; then
		EchoGreen "SSA v1 text: yes"
	else
		EchoRed "SSA v1 text: no"
	fi

	if [[ "$SSAVersion" == "v4.00+" ]] && [[ "$Version4PlusStyles" -eq "0" ]]; then
		EchoGreen "ASS"
		NewName=$(echo $SSAFile | sed 's/.ssa/.ass/g')
		EchoBlue "$SSAFile -> $NewName"
		mv "$SSAFile" "$NewName"
	else
		EchoGreen "SSA"
	fi
}
function EchoRed
{
	tput sgr0
	tput bold
	tput setaf 1
	echo "$@"
	tput sgr0
}
function EchoGreen
{
	tput sgr0
	tput bold
	tput setaf 2
	echo "$@"
	tput sgr0
}
function EchoBlue
{
	tput sgr0
	tput bold
	tput setaf 4
	echo "$@"
	tput sgr0
}
File="$1"
echo "File: $File"
echo "Subtitles: $(CountSubtitlesTracks)"
echo "srt: $(CountSRT)"
echo "ssa: $(CountSSA)"
ID=$(GetSubtitlesID)
IDSrt=$(GetSrtID)
IDSsa=$(GetSsaID)
echo "Subtitles ID: $ID"
for Srt in $IDSrt
do
	echo "srt id: $Srt"
	mkvextract tracks $File "$Srt:$Srt.srt"
done
for Ssa in $IDSsa
do
	echo "ssa id: $Ssa"
	mkvextract tracks $File "$Ssa:$Ssa.ssa"
	SSAProcess "$Ssa.ssa"
done
