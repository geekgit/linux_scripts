#!/bin/bash
CurrPath="${PWD}"
TmpPath="/tmp/encrypted-client-hello-dummy"
sudo apt-get install -y git curl
UuidgenFile="$(which uuidgen)"
if test -f "${UuidgenFile}"
then
		TmpPath="/tmp/encrypted-client-hello-$uuidgen"
		echo "${TmpPath}"
		mkdir -p "${TmpPath}"
		cd "${TmpPath}"
		git clone "https://github.com/geekgit/linux_configs"
		cd linux_configs
		sudo mkdir -p /etc/opt/chrome/policies/managed/
		sudo cp ./etc/opt/chrome/policies/managed/ech-disabled.json /etc/opt/chrome/policies/managed/ech-disabled.json
		sudo mkdir -p /etc/opt/chromium/policies/managed/
		sudo cp ./etc/opt/chromium/policies/managed/ech-disabled.json /etc/opt/chromium/policies/managed/ech-disabled.json
		sudo mkdir -p /etc/opt/chromium-browser/policies/managed/
		sudo cp ./etc/opt/chromium-browser/policies/managed/ech-disabled.json /etc/opt/chromium-browser/policies/managed/ech-disabled.json
		sudo mkdir -p /etc/opt/brave/policies/managed/
		sudo cp ./etc/opt/brave/policies/managed/ech-disabled.json /etc/opt/brave/policies/managed/ech-disabled.json
		cd "${CurrPath}"
		rm -rf "${TmpPath}"
		exit 0
else
	exit 1
fi
	
