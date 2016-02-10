#!/bin/bash
Files=$(find -name "*" -type f)
for File in $Files
do
	BaseName=$(basename $File)
	NewName=$(echo $BaseName | sed 's|-\+|-|g')
	mv "./$BaseName" $NewName
done
