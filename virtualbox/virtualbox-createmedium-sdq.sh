#!/bin/bash
VBoxManage.exe createmedium --filename sdq.vmdk --variant rawdisk --format=vmdk --property rawdrive=/dev/sdq
