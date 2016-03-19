#!/bin/bash
# Need root rights!
Line="========================"
Modules=$(lsmod | tail -n +2 | awk '{print $1}' | tr "\n" " ")
echo "Modules info script!"
echo $Line
echo "Modules: $Modules"
echo $Line
for Module in $Modules
do
	echo "Module: $Module"
	modinfo $Module
	echo $Line
done