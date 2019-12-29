#!/bin/bash
Version="$1"
apt-get purge $(apt-cache search "${Version}" | awk '{print $1}' | xargs)
