#!/bin/bash
VBoxManage.exe createmedium --filename sdx.vmdk --variant rawdisk --format=VMDK --property RawDrive=/dev/sdx
