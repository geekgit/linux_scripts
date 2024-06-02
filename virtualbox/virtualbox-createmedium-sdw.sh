#!/bin/bash
VBoxManage.exe createmedium --filename sdw.vmdk --variant rawdisk --format=VMDK --property RawDrive=/dev/sdw
