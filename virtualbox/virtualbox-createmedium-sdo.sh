#!/bin/bash
VBoxManage.exe createmedium --filename sdo.vmdk --variant rawdisk --format=VMDK --property RawDrive=/dev/sdo
