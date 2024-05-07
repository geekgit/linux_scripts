#!/bin/bash
Link="$1"
aria2c -x 16 -s 16 --file-allocation=none --enable-dht false --enable-peer-exchange false --follow-torrent=false --follow-metalink=false "${Link}"
