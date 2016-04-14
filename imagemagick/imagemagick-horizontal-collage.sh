#!/bin/bash
Image1="$1"
Image2="$2"
Result="$3"
montage "$Image1" "$Image2" -tile 2x1 -geometry +0-0 "$Result"
