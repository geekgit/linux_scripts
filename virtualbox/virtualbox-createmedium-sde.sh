#!/bin/bash
VBoxManage.exe createmedium --filename sde.vmdk --variant rawdisk --format=VMDK --property RawDrive=/dev/sde
