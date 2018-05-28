#!/bin/bash
ServerPort="64550"
DockerPort="1984"
RngSeed=$(openssl rand -hex 15)
docker run --name 'rust_mtproto_proxy' --restart unless-stopped -p $Port:$DockerPort -dti dotcypress/mtproxy -s $RngSeed
echo "Server port: $ServerPort"
echo "Docker port: $DockerPort"
echo "Seed: $RngSeed"