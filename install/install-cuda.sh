#!/bin/bash
CudaUrl="http://developer.download.nvidia.com/compute/cuda/7.5/Prod/local_installers/cuda_7.5.18_linux.run"
UUID=$(uuidgen)
CudaFolder="$HOME/$UUID-cuda-install"
cd "$CudaFolder"
wget "$CudaUrl" -O cuda.run
chmod +x cuda.run
sudo ./cuda.run --silent --override --toolkit --samples --no-opengl-libs --verbose
