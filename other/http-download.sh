#!/bin/bash
Url="$1"
aria2c -x 8 -s 8 -UMozilla/5.0 --file-allocation=falloc $Url
