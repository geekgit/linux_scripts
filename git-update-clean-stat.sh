#!/bin/bash
Folders=$(find . -maxdepth 1 -type d | grep './' | sed 's|./||g' | tr '\n' ' ')
echo "Проекты: $Folders"
for F in $Folders
do
	cd $F
	git reset --hard &>/dev/null
	git clean -d -x -f &>/dev/null
	git pull &>/dev/null
	LogName="..//$F-log.txt"
	git log --pretty=format:'%cd %h : %s' --since=1.year > "$LogName"
	Commits=$(cat "$LogName" | wc -l)
	echo "$F — $Commits коммитов за последний год"
	cd ..
done
