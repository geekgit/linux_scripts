#!/bin/bash
File="$1"
if [ -r "$File" ];
then
	echo "'$File' exists and readable"
	Data=$(cat $File)
	echo $Data
	for DataChunk in $Data
	do
		echo "Data: $DataChunk"
		http-download $DataChunk
	done
else
	echo "'$File' not exist or not readable"
fi

