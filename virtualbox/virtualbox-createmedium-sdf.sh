#!/bin/bash
VBoxManage.exe createmedium --filename sdf.vmdk --variant rawdisk --format=VMDK --property RawDrive=/dev/sdf
