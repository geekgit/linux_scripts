#!/bin/bash
VBoxManage.exe createmedium --filename sdz.vmdk --variant rawdisk --format=VMDK --property RawDrive=/dev/sdz
