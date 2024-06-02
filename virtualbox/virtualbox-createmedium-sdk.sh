#!/bin/bash
VBoxManage.exe createmedium --filename sdk.vmdk --variant rawdisk --format=vmdk --property rawdrive=/dev/sdk
