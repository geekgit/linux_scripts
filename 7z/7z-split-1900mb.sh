#!/bin/bash
for D in */
do
	DirPath=$(realpath "$D")
	ArchiveName=${D%/}
	7za -v1900m a $ArchiveName $DirPath
done
