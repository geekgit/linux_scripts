#!/bin/bash
VBoxManage.exe createmedium --filename sdi.vmdk --variant rawdisk --format=vmdk --property rawdrive=/dev/sdi
