#!/bin/bash
VBoxManage.exe createmedium --filename sdh.vmdk --variant rawdisk --format=VMDK --property RawDrive=/dev/sdh
