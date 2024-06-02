#!/bin/bash
VBoxManage.exe createmedium --filename sdr.vmdk --variant rawdisk --format=VMDK --property RawDrive=/dev/sdr
