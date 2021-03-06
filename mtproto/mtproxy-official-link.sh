#!/bin/bash
ServerPort=$(cat /usr/local/bin/geekgit-mtproxy-official-start | grep ServerPort= | awk -F= '{print $2}' | xargs | tr -d '"' | xargs)
Secret=$(docker logs official_mtproto_proxy 2>&1 | grep 'Secret 1' | awk -F: '{print $2}' | xargs)
ExternalIP=$(docker logs official_mtproto_proxy 2>&1 | grep 'External IP' | awk -F: '{print $2}' | xargs)
echo "tg://proxy?server=$ExternalIP&port=$ServerPort&secret=$Secret"
echo "https://t.me/proxy?server=$ExternalIP&port=$ServerPort&secret=$Secret"