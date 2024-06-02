#!/bin/bash
VBoxManage.exe createmedium --filename sdd.vmdk --variant rawdisk --format=vmdk --property rawdrive=/dev/sdd
