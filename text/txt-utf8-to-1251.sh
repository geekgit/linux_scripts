#!/bin/bash
File="$1"
NewFile="${File%.*}.1251.txt"
iconv -f UTF-8 -t CP1251 "${File}" > "${NewFile}"
