#!/bin/bash
function test_exec {
	$1 1>/dev/null 2>/dev/null
	ExitCode="$?"
	if [ $ExitCode -eq 0 ]
	then
		echo "OK"
	else
		echo "Disabled"
	fi
}
IPv4Status=$(test_exec test-ipv4)
IPv6Status=$(test_exec test-ipv6)
echo "IPv4: $IPv4Status"
echo "IPv6: $IPv6Status"
