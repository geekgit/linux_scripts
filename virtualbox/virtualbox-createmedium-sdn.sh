#!/bin/bash
VBoxManage.exe createmedium --filename sdn.vmdk --variant rawdisk --format=VMDK --property RawDrive=/dev/sdn
