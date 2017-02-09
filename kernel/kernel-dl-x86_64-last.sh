#!/bin/bash
geekgit-kernel-fetch-list
Kernel=$(geekgit-kernel-get-last-version | tail -n1)
echo "Kernel: $Kernel"
geekgit-kernel-dl-x86_64 "$Kernel"
