#!/bin/bash
HomeFolder="${HOME}"
RSSFolder="${HOME}/RSS"
echo "$(date)"
echo "Fetch..."
cd "$HomeFolder"
/usr/bin/python /usr/local/bin/flexget execute
cd "$RSSFolder"
chmod a+rwx *.*
