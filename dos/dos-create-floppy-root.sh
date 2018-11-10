#!/bin/bash
create_floppy() {
	DirectoryName="$1"
	UUIDMount="$(uuidgen)"
	ImgPath="${DirectoryName}.img"
	MountPath="/media/virtual_floppy/${UUIDMount}/"
	echo "${DirectoryName} -> ${ImgPath} -> ${MountPath}"	
	mkfs.msdos -C "${ImgPath}" 1440	
	sudo mkdir -p "${MountPath}"
	sudo mount -o loop,rw "${ImgPath}" "${MountPath}"
	sudo cp -r ./"${DirectoryName}"/* "${MountPath}"
	echo "wait..."
	sleep 5
	echo "sudo umount ${MountPath}"
	sudo umount "${MountPath}"
	echo "wait again..."	
	sleep 10
	echo "cleaning..."
	sudo rm -i -r "${MountPath}"
}

for directory in */
do
	short_dir=${directory%/}

	if [[ -d $short_dir ]]
	then
		create_floppy "$short_dir"
	fi
done


