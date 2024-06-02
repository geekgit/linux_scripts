#!/bin/bash
VBoxManage.exe createmedium --filename sdv.vmdk --variant rawdisk --format=vmdk --property rawdrive=/dev/sdv
