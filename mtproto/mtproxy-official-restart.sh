#!/bin/bash
LogFile=$(realpath ~/mtproxy_official/mtproxy-official-container.log)
echo "$(date -u): Restart" >> $LogFile
/usr/local/bin/geekgit-mtproxy-official-stop
/usr/local/bin/geekgit-mtproxy-official-remove
/usr/local/bin/geekgit-mtproxy-official-start