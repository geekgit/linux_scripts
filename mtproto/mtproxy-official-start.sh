#!/bin/bash
ServerPort="443"
DockerPort="443"
Secret=$(openssl rand -hex 15)
docker run --name 'official_mtproto_proxy' --restart unless-stopped -p $ServerPort:$DockerPort -e SECRET=$Secret -d telegrammessenger/proxy
echo "Server port: $ServerPort"
echo "Docker port: $DockerPort"