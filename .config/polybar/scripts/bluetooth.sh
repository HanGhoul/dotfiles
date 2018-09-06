#!/bin/sh

status=`bluetoothctl show | grep Powered | awk '{print $2}'`

if [ $status = "yes" ]; then
	echo 1
else
	exit 1
fi
