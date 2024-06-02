#!/bin/bash
VBoxManage.exe createmedium --filename sdl.vmdk --variant rawdisk --format=VMDK --property RawDrive=/dev/sdl
