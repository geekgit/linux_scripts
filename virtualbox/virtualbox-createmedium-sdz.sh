#!/bin/bash
VBoxManage.exe createmedium --filename sdz.vmdk --variant rawdisk --format=vmdk --property rawdrive=/dev/sdz
