#!/bin/bash
fc-list | awk -F: {'print "\"" $2 "\""'} | sed 's/" /"/g' | sort | uniq
