#!/bin/bash
Links="$1"

while IFS= read -r link; do
	aria2c -x 16 -s 16 --file-allocation=none "${link}"
done < "${Links}"
