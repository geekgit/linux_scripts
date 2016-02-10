#!/bin/bash
function test-font {
	Font="$@"
	list-fonts | grep "$Font" &> /dev/null	
	local ExitCode=$?
	if [ $ExitCode -ne 0 ]; then
		tput bold; tput setaf 1; echo "$Font: no"; tput sgr0
	else
		tput bold; tput setaf 2; echo "$Font: yes"; tput sgr0
	fi
}
Arg="$@"
test-font $Arg
