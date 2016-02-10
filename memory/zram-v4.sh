#!/bin/bash
RAMSize="512" # 512 mb (x8)
Threads="4" # 4 devices, 4 threads
modprobe zram num_devices=$Threads 
swapoff -a
swapon -a
SystemSwapArea=$(swapon -s | tail -n1 | awk '{print $1}')
echo "System swap area: $SystemSwapArea"
if [[ $RAMSize =~ ^[0-9]+$ ]] ; then
	echo "$RAMSize is valid integer"
else
	echo "$RAMSize is not valid integer"
	exit 1
fi
if [[ $Threads =~ ^[0-9]+$ ]] ; then
	echo "$Threads is valid integer"
else
	echo "$Threads is not valid integer"
	exit 1
fi
modprobe zram num_devices="$Threads"
DiskSize=$((RAMSize*1024*1024))
swapoff -a
for ((i=0;i<Threads;++i)); do
	cmd1="echo $DiskSize > /sys/block/zram$i/disksize"
	cmd2="mkswap /dev/zram$i"
	cmd3="swapon /dev/zram$i -p 100"
	echo "$DiskSize" > /sys/block/zram$i/disksize
	echo "$cmd2"
	echo "$cmd3"
	$cmd1
	$cmd2
	$cmd3
done
swapon $SystemSwapArea -p 10
