#!/bin/bash
Kernel=$(geekgit-kernel-get-last-version-non-rc)
echo "Kernel: $Kernel"
geekgit-kernel-dl-x86_64 "$Kernel"
