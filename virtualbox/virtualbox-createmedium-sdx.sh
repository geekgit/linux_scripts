#!/bin/bash
VBoxManage.exe createmedium --filename sdx.vmdk --variant rawdisk --format=vmdk --property rawdrive=/dev/sdx
