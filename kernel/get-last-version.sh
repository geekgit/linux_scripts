#!/bin/bash
VersionList="$HOME/kernel-list-parsed.txt"
LastNonRc=$(cat "$VersionList" | sort --version-sort | tail -n1)
echo "$LastNonRc"
