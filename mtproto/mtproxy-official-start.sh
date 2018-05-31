#!/bin/bash
ServerPort="443"
DockerPort="443"
mkdir -p ~/mtproxy_official
mkdir -p ~/mtproxy_official/proxy-config
MtproxyOfficialDir=$(realpath ~/mtproxy_official)
MtproxyOfficialProxyConfigDir=$(realpath ~/mtproxy_official/proxy-config)
docker run --name 'official_mtproto_proxy' --restart unless-stopped -p $ServerPort:$DockerPort -v $MtproxyOfficialProxyConfigDir:/data -d telegrammessenger/proxy
echo "Server port: $ServerPort"
echo "Docker port: $DockerPort"
echo "MTProxy path: $MtproxyOfficialDir"
echo "proxy-config: $MtproxyOfficialProxyConfigDir"