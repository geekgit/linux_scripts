#!/bin/bash
#usage ./zram.sh 1024 8
#1024 mb each, 8 cores
#usage ./zram.sh 128 4
#128 mb each, 4 cores
function test_int {
	if [[ "$1" =~ ^[0-9]+$ ]] ; then
	:
else
	echo "Error: '$1' != int"
	exit 1
fi
}
RAMSize="$1"
Threads="$2"
test_int "$RAMSize"
test_int "$Threads"
echo "RAM Size = $RAMSize MB, Threads = $Threads"
modprobe zram num_devices="$Threads"
DiskSize=$((RAMSize*1024*1024))
echo "Disk Size = $DiskSize bytes"
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
