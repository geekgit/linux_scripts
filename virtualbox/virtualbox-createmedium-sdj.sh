#!/bin/bash
VBoxManage.exe createmedium --filename sdj.vmdk --variant rawdisk --format=VMDK --property RawDrive=/dev/sdj
