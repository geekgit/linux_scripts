#!/bin/bash
VBoxManage.exe createmedium --filename sdq.vmdk --variant rawdisk --format=VMDK --property RawDrive=/dev/sdq
