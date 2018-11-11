#!/bin/bash
File="$1"
NewFile="${File%.*}.utf-8.txt"
iconv -f IBM866 -t UTF-8 "${File}" > "${NewFile}"
