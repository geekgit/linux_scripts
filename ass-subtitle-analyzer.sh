#!/bin/bash
File="$1"
Data=$(cat $File | grep 'Style:' | grep ',' | awk -F: '{print $2}' | awk -F, '{print "\"" $2 "\""}' | uniq | sort | tr "\n" " ")
echo "Fonts: $Data"
