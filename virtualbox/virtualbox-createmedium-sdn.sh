#!/bin/bash
VBoxManage.exe createmedium --filename sdn.vmdk --variant rawdisk --format=vmdk --property rawdrive=/dev/sdn
