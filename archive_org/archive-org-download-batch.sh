#!/bin/bash
Batch="$1"
aria2c -x 16 -s 16 --file-allocation=none --input-file="${Batch}"
