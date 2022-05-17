#!/bin/bash
CurrPath=$(pwd)
Basename=${CurrPath##*/}
Files="$@"
Count="$#"
echo "${Count}"

if [[ "${Count}" -eq 0 ]]; then
	exit
fi

if [[ "${Count}" -gt 1 ]]; then 
	echo -n "" > "${Basename}.m3u"
fi
for File in $Files
do
	Filename=$(basename "$File")
	Extension="${Filename##*.}"
	Plain="${Filename%.*}"
	chdman createcd -np $(nproc) -f -i "${Filename}" -o "${Plain}.chd"
	if [[ "${Count}" -gt 1 ]]; then 
		echo "${Plain}.chd" >> "${Basename}.m3u"
	fi
done
if [[ "${Count}" -gt 1 ]]; then 
	echo ""
	echo "${Basename}.m3u:"
	cat "${Basename}.m3u"
fi

