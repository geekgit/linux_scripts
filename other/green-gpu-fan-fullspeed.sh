#!/bin/bash
function _run
{
	Cmd="$(echo "$1" | base64 -d)"
	echo "${1} -> ${Cmd}"
	eval "$Cmd"
}
_run "ZWNobyAiR3B1IEZhbiBGdWxsIFNwZWVkLi4uIgo="
_run "bnZpZGlhLXNldHRpbmdzIC1hICJbZ3B1OjBdL0dQVUZhbkNvbnRyb2xTdGF0ZT0xIgo="
_run "bnZpZGlhLXNldHRpbmdzIC1hICJbZmFuLTBdL0dQVVRhcmdldEZhblNwZWVkPTEwMCIK"
