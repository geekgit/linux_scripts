#!/bin/bash
CurrPath="${PWD}"
MozPath="${HOME}/.mozilla/firefox"
cd "${MozPath}"
Dirs=$(ls -ld ./*/ | awk -F/ '{printf "%s ", $2}')
for curr_dir in $Dirs
do
	FullPath="${HOME}/.mozilla/firefox/${curr_dir}"
	if [ -d "${FullPath}" ]; then
		echo "${FullPath}"
		cd "${FullPath}"
		cp "${HOME}/git/firefox/stable-mini/prefs.js" .
		cd "${MozPath}" 		
	fi
done
