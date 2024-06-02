#!/bin/bash
VBoxManage.exe createmedium --filename sdb.vmdk --variant rawdisk --format=vmdk --property rawdrive=/dev/sdb
