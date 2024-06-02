#!/bin/bash
VBoxManage.exe createmedium --filename sde.vmdk --variant rawdisk --format=vmdk --property rawdrive=/dev/sde
