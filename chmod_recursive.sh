#!/bin/bash
# use $1 path

# set $2 rights for files
find "$1" -type f -exec chmod $2 {} \;
# set $3 rights for directory
find "$1" -type d -exec chmod $3 {} \;
