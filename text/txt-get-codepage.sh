#!/bin/bash
File="$1"
Codepage=$(chardet "${File}" | awk -F: '{print $2}' | xargs | awk '{print $1}')
echo "${Codepage}"
