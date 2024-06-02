#!/bin/bash
VBoxManage.exe createmedium --filename sdm.vmdk --variant rawdisk --format=VMDK --property RawDrive=/dev/sdm
