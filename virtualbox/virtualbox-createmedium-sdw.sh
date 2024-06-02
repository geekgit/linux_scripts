#!/bin/bash
VBoxManage.exe createmedium --filename sdw.vmdk --variant rawdisk --format=vmdk --property rawdrive=/dev/sdw
