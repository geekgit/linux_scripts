#!/bin/bash
VBoxManage.exe createmedium --filename sdy.vmdk --variant rawdisk --format=vmdk --property rawdrive=/dev/sdy
