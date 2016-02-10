#!/bin/bash
User="$1"
id -u "$User" 1>/dev/null 2>/dev/null
ExitCode="$?"
if [ $ExitCode -eq 0 ]
then
	iptables -A OUTPUT -m owner --uid-owner "$User" -j LOG --log-prefix "[iptables-log] $User Block: "
	iptables -A OUTPUT -m owner --uid-owner "$User" -j DROP
	echo "OK"
else
	echo "Fail"
fi

