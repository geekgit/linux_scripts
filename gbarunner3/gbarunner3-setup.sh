#!/bin/bash
GBARunner3Dir="$HOME/GBARunner3"
mkdir -p "${GBARunner3Dir}"
cd "${GBARunner3Dir}"
wget --secure-protocol=TLSv1_2 --https-only "https://nightly.link/Gericom/GBARunner3/workflows/nightly/develop/GBARunner3.zip" -O GBARunner3_develop.zip
git clone --branch "feature/cache-hicode" "https://github.com/Gericom/GBARunner3" cache-hicode
git clone --branch "develop" "https://github.com/Gericom/GBARunner3" develop
mkdir -p "${GBARunner3Dir}/_gba/configs"
cp ./cache-hicode/configs/*.json "${GBARunner3Dir}/_gba/configs/"
cp ./develop/configs/*.json "${GBARunner3Dir}/_gba/configs/"