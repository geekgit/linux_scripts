#!/bin/bash
function _run
{
	Cmd="$(echo "$1" | base64 -d)"
	echo "${1} -> ${Cmd}"
	eval "$Cmd"
}
_run "c3VkbyBudmlkaWEteGNvbmZpZwo="
_run c3VkbyBudmlkaWEteGNvbmZpZyAtLWNvb2wtYml0cz00Cg==
