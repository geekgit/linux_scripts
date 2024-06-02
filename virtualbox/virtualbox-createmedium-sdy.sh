#!/bin/bash
VBoxManage.exe createmedium --filename sdy.vmdk --variant rawdisk --format=VMDK --property RawDrive=/dev/sdy
