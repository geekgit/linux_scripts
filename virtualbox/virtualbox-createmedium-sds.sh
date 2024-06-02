#!/bin/bash
VBoxManage.exe createmedium --filename sds.vmdk --variant rawdisk --format=VMDK --property RawDrive=/dev/sds
