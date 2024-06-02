#!/bin/bash
VBoxManage.exe createmedium --filename sdg.vmdk --variant rawdisk --format=vmdk --property rawdrive=/dev/sdg
