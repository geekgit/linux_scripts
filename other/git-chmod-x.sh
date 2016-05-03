#!/bin/bash
File="$1"
chmod +x "$File"
git update-index --chmod=+x "$File"
git commit -m "chmod +x $File"
#git push
