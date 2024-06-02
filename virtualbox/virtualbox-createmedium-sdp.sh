#!/bin/bash
VBoxManage.exe createmedium --filename sdp.vmdk --variant rawdisk --format=vmdk --property rawdrive=/dev/sdp
