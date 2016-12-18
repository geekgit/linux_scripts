#!/bin/bash
# apt-get install -y libarchive-zip-perl
File="$1"
Sum=$(crc32 "$1")
echo "${File}: ${Sum}"
