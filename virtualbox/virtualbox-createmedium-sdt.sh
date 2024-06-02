#!/bin/bash
VBoxManage.exe createmedium --filename sdt.vmdk --variant rawdisk --format=vmdk --property rawdrive=/dev/sdt
