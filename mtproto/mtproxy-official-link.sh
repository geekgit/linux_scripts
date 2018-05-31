#!/bin/bash
ServerPort="64551"
Secret=$(docker logs official_mtproto_proxy | grep 'Secret 1' | awk -F: '{print $2}' | xargs)
ExternalIP=$(docker logs official_mtproto_proxy | grep 'External IP' | awk -F: '{print $2}' | xargs)
echo "tg://proxy?server=$ExternalIP&port=$ServerPort&secret=$Secret"
echo "https://t.me/proxy?server=$ExternalIP&port=$ServerPort&secret=$Secret"