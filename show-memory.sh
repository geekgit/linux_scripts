#!/bin/bash
function KB_to_GB
{
	echo $(printf "%.2f" $(echo "$1/1048576.0" | bc -l | sed 's|\.|,|g'))
}
function KB_to_MB
{
	echo $(printf "%.2f" $(echo "$1/1024.0" | bc -l | sed 's|\.|,|g'))
}
function UsedLine
{
	FreeMemoryKB=$(cat /proc/meminfo | grep MemFree | awk {'print $2'})
	TotalMemoryKB=$(cat /proc/meminfo | grep MemTotal | awk {'print $2'})
	BuffersMemoryKB=$(cat /proc/meminfo | grep Buffers | awk {'print $2'})
	CachedMemoryKB=$(cat /proc/meminfo | grep -v Swap | grep Cached | awk {'print $2'})
	CalcFreeMemoryKB=$(echo "$FreeMemoryKB+$BuffersMemoryKB+$CachedMemoryKB" | bc -l)
	CalcUsedMemoryKB=$(echo "$TotalMemoryKB-$CalcFreeMemoryKB" | bc -l)
	echo "Used: $(KB_to_GB $CalcUsedMemoryKB) GB / $(KB_to_GB $TotalMemoryKB) GB"
}
function FreeLine
{
	FreeMemoryKB=$(cat /proc/meminfo | grep MemFree | awk {'print $2'})
	TotalMemoryKB=$(cat /proc/meminfo | grep MemTotal | awk {'print $2'})
	BuffersMemoryKB=$(cat /proc/meminfo | grep Buffers | awk {'print $2'})
	CachedMemoryKB=$(cat /proc/meminfo | grep -v Swap | grep Cached | awk {'print $2'})
	CalcFreeMemoryKB=$(echo "$FreeMemoryKB+$BuffersMemoryKB+$CachedMemoryKB" | bc -l)
	CalcUsedMemoryKB=$(echo "$TotalMemoryKB-$CalcFreeMemoryKB" | bc -l)
	echo "Free: $(KB_to_GB $CalcFreeMemoryKB) GB / $(KB_to_GB $TotalMemoryKB) GB"
}
function FreeInfo
{
	FreeMemoryKB=$(cat /proc/meminfo | grep MemFree | awk {'print $2'})
	TotalMemoryKB=$(cat /proc/meminfo | grep MemTotal | awk {'print $2'})
	BuffersMemoryKB=$(cat /proc/meminfo | grep Buffers | awk {'print $2'})
	CachedMemoryKB=$(cat /proc/meminfo | grep -v Swap | grep Cached | awk {'print $2'})
	CalcFreeMemoryKB=$(echo "$FreeMemoryKB+$BuffersMemoryKB+$CachedMemoryKB" | bc -l)
	CalcUsedMemoryKB=$(echo "$TotalMemoryKB-$CalcFreeMemoryKB" | bc -l)
	echo "$(KB_to_GB $CalcFreeMemoryKB) GB / $(KB_to_GB $TotalMemoryKB) GB"
}
FreeInfo