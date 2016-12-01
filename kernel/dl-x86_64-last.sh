#!/bin/bash
Kernel=$(./get-last-version.sh)
echo "Kernel: $Kernel"
./dl-x86_64-kernel.sh "$Kernel"
