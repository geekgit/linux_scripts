#!/bin/bash
File="$1"
NewFile="${File%.*}.866.txt"
iconv -f UTF-8 -t IBM866 "${File}" > "${NewFile}"
