#!/bin/bash
Password="$1"
for D in */
do
	DirPath=$(realpath "$D")
	ArchiveName=${D%/}
	7za -t7z -m0=lzma -mx=9 -mfb=64 -md=32m -ms=on -mhc=on -mhe=on -p"$Password" a $ArchiveName $DirPath
done