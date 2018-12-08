#!/bin/bash
function set_scroll {
	Mouse="$1"
	xinput set-prop "${Mouse}" "libinput Scroll Method Enabled" 0, 0, 1
}

function search_mouse {
	xinput | grep "USB OPTICAL MOUSE" | awk -F= '{print $2}' | awk '{print $1}' | xargs
}

ID=$(search_mouse)
for mouse in $ID
do
	echo "Mouse: $mouse"
	set_scroll $mouse
done
