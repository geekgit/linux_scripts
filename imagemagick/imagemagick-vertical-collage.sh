#!/bin/bash
Image1="$1"
Image2="$2"
Background="$3"
# example: Background="white"
Result="$4"
convert "$Image1" "$Image2" -background "$Background" -append "$Result"
