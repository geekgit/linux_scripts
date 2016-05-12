#!/bin/bash
# usage: geekgit-devel-create-deb <Source Path> <Control Path>
# example: geekgit-devel-create-deb /opt/some-program /root/control
echo "Create deb struct..."
PackageName=$(cat control | grep "Package:" | awk '{print $2}')
echo "Parsed package name: $PackageName"
FolderName="$PackageName"
DestPath="./$FolderName/"
SourcePath="$1"
ControlPath="$2"
echo "Source path: $SourcePath"
echo "control path: $ControlPath"
mkdir $FolderName
cp -a "$SourcePath" "$DestPath"
mkdir "$DestPath/DEBIAN"
cp "$ControlPath" "$DestPath/DEBIAN"
dpkg-deb --build "$PackageName"
