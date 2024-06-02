#!/bin/bash
VBoxManage.exe createmedium --filename sdu.vmdk --variant rawdisk --format=VMDK --property RawDrive=/dev/sdu
