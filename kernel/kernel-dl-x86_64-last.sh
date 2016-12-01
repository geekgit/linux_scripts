#!/bin/bash
Kernel=$(geekgit-kernel-get-last-version)
echo "Kernel: $Kernel"
geekgit-kernel-dl-x86_64 "$Kernel"
