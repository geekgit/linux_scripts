#!/bin/bash
create_floppy() {
	CurrPath="${PWD}"
	DirectoryName="$1"
	cd "${DirectoryName}"
	TempPath="${PWD}"
	ImgPath="${CurrPath}/${DirectoryName}.img"
	echo "${TempPath} -> ${ImgPath}"
	mkfs.msdos -C "${ImgPath}" 1440

	for f in *
	do
		if [[ -d $f ]]
		then
			echo "["
			echo "mcopy -v -s -i ${ImgPath} ${f} ::/"
			mcopy -v -s -i "${ImgPath}" "${f}" "::/"
			echo "]"		
		else
			echo "<"
			echo "mcopy -i ${ImgPath} ${f} ::/"
			mcopy -v -i "${ImgPath}" "${f}" "::/"
			echo ">"
		fi
	done

	cd "${CurrPath}"
}

for directory in */
do
	short_dir=${directory%/}

	if [[ -d $short_dir ]]
	then
		create_floppy "${short_dir}"
	fi
done


