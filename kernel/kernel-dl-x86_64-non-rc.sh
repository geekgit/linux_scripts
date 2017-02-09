#!/bin/bash
geekgit-kernel-fetch-list
Kernel=$(geekgit-kernel-get-last-version-non-rc | tail -n1)
echo "Kernel: $Kernel"
geekgit-kernel-dl-x86_64 "$Kernel"
