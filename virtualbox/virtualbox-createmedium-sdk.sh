#!/bin/bash
VBoxManage.exe createmedium --filename sdk.vmdk --variant rawdisk --format=VMDK --property RawDrive=/dev/sdk
