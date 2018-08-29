#!/bin/sh

status=`bluetoothctl show | grep Powered | awk '{print $2}'`

if [ $status = "yes" ]; then
	icon="%{F#68A2DA}%{F-} %{F#aabcce}on%{F-}"
else
	icon="%{F#4f5b66}%{F-} %{F#aabcce}off%{F-}"
fi

echo $icon
