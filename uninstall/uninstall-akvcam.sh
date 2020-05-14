#!/bin/bash
DriverVersion="5.3.18"
sudo dkms remove akvcam/${DriverVersion} --all
sudo rm -rvf /usr/src/akvcam-${DriverVersion}
sudo rm -rf /etc/akvcam
sudo rm /etc/modules-load.d/akvcam.conf
