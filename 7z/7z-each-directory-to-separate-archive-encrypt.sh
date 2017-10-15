#!/bin/bash
Password="$1"
for D in */
do
	7za -t7z -m0=lzma -mx=9 -mfb=64 -md=32m -ms=on -mhc=on -mhe=on -p"$Password" a $D $D
done