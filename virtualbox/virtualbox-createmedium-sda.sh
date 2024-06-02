#!/bin/bash
VBoxManage.exe createmedium --filename sda.vmdk --variant rawdisk --format=VMDK --property RawDrive=/dev/sda
