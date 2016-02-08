#!/bin/bash
function RenameFunc
{
	file="$@"
	if [ -r "$file" ];
	then
		EchoGreen "'$file' exists and readable"
		Extension="${file##*.}"
		if [ "$file" == "$Extension" ]
		then
			Extension=""
		fi
		OffsetLeadingZero=$(printf "%03d" $Offset)
		NewName="$file"
		if [ -n "$Extension" ]
		then
			NewName="$OffsetLeadingZero.$Extension"
		else
			NewName="$OffsetLeadingZero"
		fi
		EchoBlue "'$file' -> '$NewName'"
		Offset=$((Offset+1))
	else
		EchoRed "'$file' not exist or not readable"
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
ArgArray=("$@")
Offset="1"
for Arg in "${ArgArray[@]}"; do
	RenameFunc $Arg
done
