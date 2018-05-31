#!/bin/bash
ServerPort="443"
DockerPort="443"
Secret=$(openssl rand -hex 32)
mkdir -p ~/mtproxy_official
mkdir -p ~/mtproxy_official/proxy-config
MtproxyOfficialDir=$(realpath ~/mtproxy_official)
MtproxyOfficialProxyConfigDir=$(realpath ~/mtproxy_official/proxy-config)
SecretPath=$(realpath ~/mtproxy_official/secret.txt)
echo "$Secret" > $SecretPath
docker run --name 'official_mtproto_proxy' --restart unless-stopped -p $ServerPort:$DockerPort -e SECRET=$Secret -v $MtproxyOfficialProxyConfigDir:/data -d telegrammessenger/proxy
echo "Server port: $ServerPort"
echo "Docker port: $DockerPort"
echo "Secret: $Secret"
echo "MTProxy path: $MtproxyOfficialDir"
echo "proxy-config: $MtproxyOfficialProxyConfigDir"