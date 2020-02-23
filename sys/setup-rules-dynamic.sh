#!/bin/bash
check() {
	Rule="${1}"
	if test -f "${Rule}"
	then
		echo "${Rule} [x]"
		sudo rm "${Rule}"
	else
		echo "${Rule} [ ]"
	fi
}

cd /etc/udev/rules.d/
check 00-rtlsdr.rules
check 01-temp-sensor.rules
check 02-nakasi.rules
check 03-iyokan-flash.rules
check 04-iyokan-fastboot.rules
check 05-iyokan-recovery-sideload-adb.rules
check 06-huawei-e1550.rules
check 07-huawei-e1550-modem-on.rules
check 08-phone-000.rules
check 10-block-ignore.rules
check 11-nakasi-debug.rules
check 12-nakasi-fastboot.rules

UuidgenFile="$(which uuidgen)"
if test -f "${UuidgenFile}"
then
	CurrPath="${PWD}"
	TmpPath="${HOME}/setup-rules-dynamic_$(uuidgen)"
	mkdir -p "${TmpPath}"
	cd "${TmpPath}"
	git clone "https://github.com/geekgit/linux_configs"
	echo "${PWD}"
	cd ./linux_configs/etc/udev/rules.d/
	echo "${PWD}"
	ls -l
	sudo cp *.rules /etc/udev/rules.d/
	cd "${CurrPath}"
	rm -rf "${TmpPath}"
	exit 0
else
	exit 1
fi	

