#!/bin/bash
ID1=$(xinput list 2>&1 | grep "AT Translated Set 2" | awk -F= '{print $2}' | awk '{print $1}')
ID2=$(xinput list 2>&1 | grep "AT Translated Set 2" | awk -F\( '{print $2}' | awk -F\) '{print $1}')
echo "ID1: $ID1 ID2: $ID2"
