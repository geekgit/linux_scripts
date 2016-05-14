#!/bin/bash
MSLoader="/boot/efi/EFI/Microsoft/Boot/bootmgfw.efi"
LinuxLoader="/boot/efi/EFI/ubuntu/grubx64.efi"
MSLoaderNew="/boot/efi/EFI/Microsoft/Boot/bootmgfw2.efi"
UUID=$(uuidgen)
BackupPath="$HOME/bootloaders-$UUID"
mkdir $BackupPath
echo "MS Loader: $MSLoader"
echo "Linux Loader: $LinuxLoader"
echo "create backup..."
sudo cp $MSLoader $BackupPath
sudo cp $LinuxLoader $BackupPath
echo "work..."
sudo mv $MSLoader $MSLoaderNew
sudo cp $LinuxLoader $MSLoader
echo "New MS Loader: $MSLoaderNew"
echo "New Linux Loader: $MSLoader"
echo "WARNING: Edit your grub config!"
