#!/bin/bash
ServerPort="64551"
DockerPort="443"
docker run --name 'official_mtproto_proxy' --restart unless-stopped -p $Port:$DockerPort -d telegrammessenger/proxy
echo "Server port: $ServerPort"
echo "Docker port: $DockerPort"