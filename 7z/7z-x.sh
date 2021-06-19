#!/bin/bash
File="$1"
Filename=$(basename "$File")
Extension="${Filename##*.}"
Plain="${Filename%.*}"
7z x "${Filename}" "-o${Plain}"
