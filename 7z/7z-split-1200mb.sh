#!/bin/bash
for D in */
do
	DirPath=$(realpath "$D")
	ArchiveName="${D%/}.zip"
	7za -v1200m a $ArchiveName $DirPath
done
