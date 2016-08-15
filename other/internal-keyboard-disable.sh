#!/bin/bash
ID1=$(xinput list 2>&1 | grep "AT Translated Set 2" | awk -F= '{print $2}' | awk '{print $1}')
ID2=$(xinput list 2>&1 | grep "AT Translated Set 2" | awk -F\( '{print $2}' | awk -F\) '{print $1}')
echo "xinput float $ID1"
xinput float $ID1
