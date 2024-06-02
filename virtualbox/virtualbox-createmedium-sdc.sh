#!/bin/bash
VBoxManage.exe createmedium --filename sdc.vmdk --variant rawdisk --format=vmdk --property rawdrive=/dev/sdc
