#!/bin/bash
VBoxManage.exe createmedium --filename sdh.vmdk --variant rawdisk --format=vmdk --property rawdrive=/dev/sdh
