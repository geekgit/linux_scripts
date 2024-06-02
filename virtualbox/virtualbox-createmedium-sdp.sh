#!/bin/bash
VBoxManage.exe createmedium --filename sdp.vmdk --variant rawdisk --format=VMDK --property RawDrive=/dev/sdp
