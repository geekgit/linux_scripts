#!/bin/bash
VBoxManage.exe createmedium --filename sdf.vmdk --variant rawdisk --format=vmdk --property rawdrive=/dev/sdf
