#!/bin/bash
VBoxManage.exe createmedium --filename sdl.vmdk --variant rawdisk --format=vmdk --property rawdrive=/dev/sdl
