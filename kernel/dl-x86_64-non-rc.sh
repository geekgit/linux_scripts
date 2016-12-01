#!/bin/bash
Kernel=$(./get-last-version-non-rc.sh)
echo "Kernel: $Kernel"
./dl-x86_64-kernel.sh "$Kernel"
