#!/bin/bash
ServerPort="8443"
DockerPort="443"
Tag="1.0"
mkdir -p ~/mtproxy_official
mkdir -p ~/mtproxy_official/proxy-config
MtproxyOfficialDir=$(realpath ~/mtproxy_official)
MtproxyOfficialProxyConfigDir=$(realpath ~/mtproxy_official/proxy-config)
docker run --name 'official_mtproto_proxy' --restart unless-stopped -p $ServerPort:$DockerPort -v $MtproxyOfficialProxyConfigDir:/data -d telegrammessenger/proxy:$Tag
echo "Tag: $Tag"
echo "Server port: $ServerPort"
echo "Docker port: $DockerPort"
echo "MTProxy path: $MtproxyOfficialDir"
echo "proxy-config: $MtproxyOfficialProxyConfigDir"