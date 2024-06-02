#!/bin/bash
VBoxManage.exe createmedium --filename sdb.vmdk --variant rawdisk --format=VMDK --property RawDrive=/dev/sdb
