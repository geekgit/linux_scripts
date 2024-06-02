#!/bin/bash
VBoxManage.exe createmedium --filename sdi.vmdk --variant rawdisk --format=VMDK --property RawDrive=/dev/sdi
