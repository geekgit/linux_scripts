#!/bin/bash
random_loop() {
	Limit=$1
	echo "Limit: ${Limit}"
	for Index in $(seq 1 $Limit)
	do
		echo "${Index}/${Limit}..."
		Filename="${Index}.bin"
		random_file "${Filename}" "1G" "30"
	done
}
random_file() {
	Filename="$1"
	Size="$2"
	OpensslQ="$3"
	OpensslSize=$(( 2**$OpensslQ ))
	echo "${Size} random -> ${Filename}..."
	echo "openssl rand -base64 "${OpensslSize}" | dd of="${Filename}" bs="${Size}" count=1"
	openssl rand -base64 "${OpensslSize}" | dd of="${Filename}" bs="${Size}" count=1
}

Iterations="$1"
random_loop "${Iterations}"


