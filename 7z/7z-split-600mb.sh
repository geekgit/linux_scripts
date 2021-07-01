#!/bin/bash
for D in */
do
	DirPath=$(realpath "$D")
	ArchiveName="${D%/}.zip"
	7za -v600m a $ArchiveName $DirPath
done
