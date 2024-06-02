#!/bin/bash
VBoxManage.exe createmedium --filename sdj.vmdk --variant rawdisk --format=vmdk --property rawdrive=/dev/sdj
