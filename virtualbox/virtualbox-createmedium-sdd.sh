#!/bin/bash
VBoxManage.exe createmedium --filename sdd.vmdk --variant rawdisk --format=VMDK --property RawDrive=/dev/sdd
