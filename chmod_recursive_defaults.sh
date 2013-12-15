#!/bin/bash
# use $1 path
# files - 644 chmod (-rw-r--r--)
# directory - 755 chmod (drwxr-xr-x)
find "$1" -type f -exec chmod 644 {} \;
find "$1" -type d -exec chmod 755 {} \;
