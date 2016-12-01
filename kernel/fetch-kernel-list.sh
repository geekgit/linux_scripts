#!/bin/bash
# Last update: 2016-11-22 (YYYY-MM-DD)
function TempPath {
	Tag="$1"
	TempVar=$(mktemp -dt "$Tag-XXXXXXXX")
	echo "$TempVar"
}
function GetKernelList {
	Url="http://kernel.ubuntu.com/~kernel-ppa/mainline/"
	ListFilepath="$(TempPath lkv)/$(uuidgen)-kernel-list.html"
	wget "$Url" -O "$ListFilepath" > /dev/null 2>&1
	Link=$(grep -Po '(?<=href=")[^"]*' "$ListFilepath")
	Vs=$(echo "$Link" | grep "^v" | awk -Fv '{print $2}' | awk -F/ '{print $1}')
	echo "$Vs"
}
echo "$(GetKernelList)" > "$HOME/kernel-list-parsed.txt"
cat "$HOME/kernel-list-parsed.txt"
