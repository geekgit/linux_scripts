#!/bin/bash
VBoxManage.exe createmedium --filename sda.vmdk --variant rawdisk --format=vmdk --property rawdrive=/dev/sda
