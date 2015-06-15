#!/bin/sh
total_ram=$(free | sed -n '2p' | awk '{print $2}')
used_ram=$(free | sed -n '2p' | awk '{print $3}')
free_ram=$(free | sed -n '2p' | awk '{print $4}')

usage=$(echo "$used_ram/$total_ram*100" | bc -l | awk '{print int($1)}')

used_swap=$(free | sed -n '4p' | awk '{print $3}')

echo "Total: $total_ram, Used: $used_ram ($usage% usage), Free: $free_ram"
echo "Swap: $used_swap"

if [ "$usage" -ge "70" ]
then
	echo "Usage >70%, killing chrome, firefox, gimp"
	pkill chrome
	pkill firefox
	pkill gimp
fi

if  [ "$free_ram" -ge "$used_swap" ]
then
	echo "Swap->RAM..."
	sudo swapoff -a
	sudo swapon -a
fi
