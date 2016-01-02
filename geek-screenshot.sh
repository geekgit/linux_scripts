#!/bin/bash
Now=$(date +"%m-%d-%Y-%H-%M-%S")
Random=$(cat /dev/urandom | tr -cd 'a-f0-9' | head -c 8)
Filename="$Now-$Random.png"
echo $Filename

SPath="$HOME/Geek-Screenshots/"
if [ ! -d "$SPath" ]; then
  echo "Create directory '$SPath'..."
  mkdir "$SPath"
fi

import -window root "$SPath/$Filename"
