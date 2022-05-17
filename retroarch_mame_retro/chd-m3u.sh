#!/bin/bash
CurrPath=$(pwd)
Basename=${CurrPath##*/}
Files="$@"
echo "" > "${Basename}.m3u"
for File in $Files
do
	Filename=$(basename "$File")
	Extension="${Filename##*.}"
	Plain="${Filename%.*}"
	chdman createcd -i "${Filename}" -o "${Plain}.chd"
	echo "${Plain}.chd" >> "${Basename}.m3u"
done

echo "${Basename}.m3u:"
cat "${Basename}.m3u"
