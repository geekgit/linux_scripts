#!/bin/bash
find ./ -name "*.txt" -type f 2>/dev/null |
while read txt
do
	File="${txt}"
	NewFile="${File%.*}.utf-8.txt"
	echo "${File} -> ${NewFile}"
	iconv -f CP1251 -t UTF-8 "${File}" > "${NewFile}"
done
