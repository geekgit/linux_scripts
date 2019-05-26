#!/bin/bash
find_kernel() {
	Ver="$1"
	echo "linux-headers-${Ver} linux-headers-${Ver}-generic linux-image-${Ver}-generic linux-modules-${Ver}-generic linux-modules-extra-${Ver}-generic"
}
clean_kernel(){
	Ver="$1"
	sudo apt-get purge -y $(find_kernel "${Ver}")
}
clean_kernel "4.15.0-20"
clean_kernel "4.15.0-30"
clean_kernel "4.15.0-47"
