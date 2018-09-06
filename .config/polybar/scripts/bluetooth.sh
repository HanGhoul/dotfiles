#!/bin/sh

status=`bluetoothctl show | grep Powered | awk '{print $2}'`

if [ $status = "yes" ]; then
	icon="%{F#68A2DA}%{F-} %{F#cbd6e2}on%{F-}"
else
	icon="%{F#f7f9fb}%{F-} %{F#cbd6e2}off%{F-}"
fi

echo $icon
