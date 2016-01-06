#!/bin/bash
KB_to_GB()
{
echo $(printf "%.2f" $(echo "$1/1048576.0" | bc -l | sed 's|\.|,|g'))
}
FreeMemoryGB=$(KB_to_GB $(cat /proc/meminfo | grep MemFree | awk {'print $2'}))
TotalMemoryGB=$(KB_to_GB $(cat /proc/meminfo | grep MemTotal | awk {'print $2'}))
echo "$FreeMemoryGB GB / $TotalMemoryGB GB"
