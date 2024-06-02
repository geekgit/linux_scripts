#!/bin/bash
VBoxManage.exe createmedium --filename sdt.vmdk --variant rawdisk --format=VMDK --property RawDrive=/dev/sdt
