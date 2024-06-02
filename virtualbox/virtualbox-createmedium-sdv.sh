#!/bin/bash
VBoxManage.exe createmedium --filename sdv.vmdk --variant rawdisk --format=VMDK --property RawDrive=/dev/sdv
