#!/bin/bash
File="$1"
NewFile0="${File%.*}.1252.txt"
iconv -f UTF-8 -t CP1252 "${File}" > "${NewFile0}"
NewFile1="${File%.*}.broken-utf8.txt"
iconv -f CP1251 -t utf8 "${NewFile0}" > "${NewFile1}"
