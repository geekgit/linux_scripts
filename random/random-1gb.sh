#!/bin/bash
random_loop() {
	Limit=$1
	for Index in $(seq 1 $Limit)
	do
		echo "${Index}/${Limit}..."
		Filename="${Index}.bin"
		random_file "${Filename}" "1G"
	done
}
random_file() {
	Filename="$1"
	Size="$2"
	echo "1gb random -> ${Filename}..."
	openssl rand -base64 1000 | dd of="${Filename}" bs="${Size}" count=1
}

Iterations="$1"

if ! [[ $Iterations =~ '^[0-9]+$' ]]
then
	random_loop 1
else
	random_loop "${Iterations}"
fi
