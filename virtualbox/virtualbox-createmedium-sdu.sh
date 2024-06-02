#!/bin/bash
VBoxManage.exe createmedium --filename sdu.vmdk --variant rawdisk --format=vmdk --property rawdrive=/dev/sdu
