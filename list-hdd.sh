#!/bin/bash
function eval_and_return()
{
local localresult=$(eval $1)
if [ -z "$localresult" ]
	then
	localresult="N/A"
	fi
echo $localresult
}

echo "HDD Temp  Realloc   Pending"

lsblk -io KNAME,TYPE | grep disk | awk {'print$1;}' |
	while IFS= read -r hdd_name
	do
 		cmd_temp="udisks --show-info /dev/$hdd_name | grep temperature-celsius-2 | cut -c 52-54"
		cmd_realloc="udisks --show-info /dev/$hdd_name | grep reallocated-sector-count | cut -c 52-63 | tr -s \" \""
		cmd_pending="udisks --show-info /dev/$hdd_name | grep current-pending-sector | cut -c 52-63 | tr -s \" \""
		temp=$(eval_and_return "$cmd_temp")
		temp=$(echo "$temp" | sed 's/C/°C/g')
		temp="+$temp"
		realloc=$(eval_and_return "$cmd_realloc")
		pending=$(eval_and_return "$cmd_pending")
		echo "$hdd_name $temp $realloc $pending"
	done
