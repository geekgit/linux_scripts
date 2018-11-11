#!/bin/bash
File="$1"
NewFile="${File%.*}.broken-utf8.txt"
iconv -f utf-8 -t CP1252 "${File}" | iconv -f CP1251 -t utf-8 > "${NewFile}"
