#!/bin/bash
VBoxManage.exe createmedium --filename sdr.vmdk --variant rawdisk --format=vmdk --property rawdrive=/dev/sdr
