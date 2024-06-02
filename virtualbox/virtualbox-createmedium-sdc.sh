#!/bin/bash
VBoxManage.exe createmedium --filename sdc.vmdk --variant rawdisk --format=VMDK --property RawDrive=/dev/sdc
