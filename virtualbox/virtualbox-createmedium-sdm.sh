#!/bin/bash
VBoxManage.exe createmedium --filename sdm.vmdk --variant rawdisk --format=vmdk --property rawdrive=/dev/sdm
