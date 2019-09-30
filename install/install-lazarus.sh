#!/bin/bash
SourceforgeServer="downloads"
FpcLazUrl="https://${SourceforgeServer}.sourceforge.net/project/lazarus/Lazarus%20Linux%20amd64%20DEB/Lazarus%202.0.4/fpc-laz_3.0.4-1_amd64.deb"
FpcLazDeb="fpc-laz_3.0.4-1_amd64.deb"
FpcSrcUrl="https://${SourceforgeServer}.sourceforge.net/project/lazarus/Lazarus%20Linux%20amd64%20DEB/Lazarus%202.0.4/fpc-src_3.0.4-2_amd64.deb"
FpcSrcDeb="fpc-src_3.0.4-2_amd64.deb"
LazarusUrl="https://${SourceforgeServer}.sourceforge.net/project/lazarus/Lazarus%20Linux%20amd64%20DEB/Lazarus%202.0.4/lazarus-project_2.0.4-0_amd64.deb"
LazarusDeb="lazarus-project_2.0.4-0_amd64.deb"

download_and_install() {
	Url="$1"
	File="$2"
	echo "Downloading ${File} from ${Url}..."
	wget --secure-protocol=TLSv1_2 --https-only "${Url}" -O "${File}"
	echo "Install ${File}..."	
	sudo dpkg -i "${File}"
}

CurrPath="${PWD}"
TmpPath="${HOME}/lazarus_install_$(uuidgen)"
mkdir -p "${TmpPath}"
cd "${TmpPath}"
download_and_install "${FpcLazUrl}" "${FpcLazDeb}"
download_and_install "${FpcSrcUrl}" "${FpcSrcDeb}"
download_and_install "${LazarusUrl}" "${LazarusDeb}"
ls -l
echo "apt-get install -fy..."
sudo apt-get install -fy
cd "${CurrPath}"
rm -rf "${TmpPath}"
