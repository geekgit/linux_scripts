#!/bin/bash
# Last update: 2021-01-06 (YYYY-MM-DD)
function TempPath {
	Tag="$1"
	TempVar=$(mktemp -dt "$Tag-XXXXXXXX")
	echo "$TempVar"
}
function DownloadKernel {
	KernelVersion="$1"
	Arch="$2"
	Url="https://kernel.ubuntu.com/~kernel-ppa/mainline/$KernelVersion/"
	KernelFilepath="$(TempPath dk)/$(uuidgen)-kernel.html"
	wget --secure-protocol=TLSv1_2 --https-only "$Url" -O "$KernelFilepath" > /dev/null 2>&1
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
		wget --secure-protocol=TLSv1_2 --https-only "$AbsoluteUrl" -P "$OutputFolder"
	done
	cd "$OutputFolder"
	geekgit-key-import-ubuntu-kernel
	gpg --verify CHECKSUMS.gpg CHECKSUMS
	shasum -c CHECKSUMS 2>&1 | grep OK
	rm "$KernelFilepath"
}
Arch="amd64"
KernelVersion="$1"
DownloadKernel "v${KernelVersion}" $Arch
