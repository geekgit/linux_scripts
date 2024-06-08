#!/bin/bash
DirectoryFile="d_$(uuidgen).txt"
find . -mindepth 1 -type d > "${DirectoryFile}"
for Directory in `cat "${DirectoryFile}"`; do
	echo "${Directory}"
	cd "${Directory}"
	geekgit-docker-build
	cd ..
done
rm "${DirectoryFile}"
