#!/bin/bash
VBoxManage.exe createmedium --filename sds.vmdk --variant rawdisk --format=vmdk --property rawdrive=/dev/sds
