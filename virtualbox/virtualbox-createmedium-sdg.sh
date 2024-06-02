#!/bin/bash
VBoxManage.exe createmedium --filename sdg.vmdk --variant rawdisk --format=VMDK --property RawDrive=/dev/sdg
