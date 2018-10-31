#!/bin/bash
CirnoPath="${HOME}/cirno/cirno_android_sdk"
mkdir -p "${CirnoPath}"
cd "${CirnoPath}"
wget --secure-protocol=TLSv1_2 --https-only "https://raw.githubusercontent.com/cirnobaka99999/android_sdk_auto/master/install-sdk.sh" -O "install-sdk.sh"
sudo chmod a+rx-w install-sdk.sh
./install-sdk.sh
