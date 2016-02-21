#!/bin/bash
Dirs=$(find -name "*" -type d)
for Dir in $Dirs
do
	#echo $Dir
	BaseName=$(echo $Dir | sed 's|\./||g')
	NewName=$(echo $BaseName | sed 's|-\+|-|g')
	if [ "$BaseName" == "$NewName" ]
	then
		:
	else
		echo "$BaseName -> $NewName"
		mv ./$BaseName ./$NewName
	fi
done
