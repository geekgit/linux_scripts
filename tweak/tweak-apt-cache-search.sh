#!/bin/bash
Keyword="$1"
apt-cache search "$Keyword" | awk '{print $1}' | grep "$Keyword" | sort
