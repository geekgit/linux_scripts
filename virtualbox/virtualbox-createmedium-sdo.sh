#!/bin/bash
VBoxManage.exe createmedium --filename sdo.vmdk --variant rawdisk --format=vmdk --property rawdrive=/dev/sdo
