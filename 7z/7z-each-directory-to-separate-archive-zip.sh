#!/bin/bash
Password="$1"
for D in */
do
	DirPath=$(realpath "$D")
	ArchiveName="${D%/}.zip"
	7za a $ArchiveName $DirPath
done
