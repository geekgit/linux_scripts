#!/bin/bash
# Last update: 2016-08-15 (YYYY-MM-DD)
function TempPath {
	Tag="$1"
	TempVar=$(mktemp -dt "$Tag-XXXXXXXX")
	echo "$TempVar"
}
function GetLastKernelVersion {
	Url="http://kernel.ubuntu.com/~kernel-ppa/mainline/"
	ListFilepath="$(TempPath lkv)/$(uuidgen)-kernel-list.html"
	echo "Temporary List File: '$ListFilepath'"
	wget "$Url" -O "$ListFilepath" > /dev/null 2>&1
	Link=$(grep -Po '(?<=href=")[^"]*' "$ListFilepath")
	Kernel=$(echo $Link | tr " " "\n" | tail -n1)
	Kernel=${Kernel::-1}
	echo $Kernel
	rm "$ListFilepath"
}
function DownloadKernel {
	KernelVersion="$1"
	Arch="$2"
	Url="http://kernel.ubuntu.com/~kernel-ppa/mainline/$KernelVersion/"
	KernelFilepath="$(TempPath dk)/$(uuidgen)-kernel.html"
	echo "Temporary Kernel File: '$KernelFilepath'"
	wget "$Url" -O "$KernelFilepath" > /dev/null 2>&1
	echo "Parsing url '$Url' ..."
	Link=$(grep -Po '(?<=href=")[^"]*' "$KernelFilepath")
	GenericArchLink=$(echo $Link | tr " " "\n" | sort | uniq | sort | grep deb | grep "$Arch" | grep generic | tr "\n" " ")
	HeadersAllLink=$(echo $Link | tr " " "\n" | sort | uniq | sort | grep deb | grep "headers" | grep "all" | tr "\n" " ")
	AllLinks="CHECKSUMS CHECKSUMS.gpg $GenericArchLink $HeadersAllLink"	
	echo "Parsed URLs..."
	OutputFolder="$HOME/$KernelVersion-$(uuidgen)"
	mkdir "$OutputFolder"
	for CurrentLink in $AllLinks
	do
		AbsoluteUrl="$Url$CurrentLink"
		echo "Saving $AbsoluteUrl as $OutputFolder/$CurrentLink..."
		wget "$AbsoluteUrl" -P "$OutputFolder"
	done
	cd "$OutputFolder"
	geekgit-key-import-ubuntu-kernel
	gpg --verify CHECKSUMS.gpg CHECKSUMS
	shasum -c CHECKSUMS 2>&1 | grep OK
	rm "$KernelFilepath"
}
Arch="amd64"
LastKernelVersion=$(GetLastKernelVersion)
echo "Date: $(date)"
echo "Architecture: $Arch"
echo "Last kernel version: $LastKernelVersion"
DownloadKernel $LastKernelVersion $Arch
