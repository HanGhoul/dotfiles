#!/bin/bash
#if [ -z "$(pgrep spotify)" ]
#  then
#     	echo "Spotify not running"
#  else
	status=$(playerctl -p spotify status)
	artist=$(playerctl -p spotify metadata artist)
	title=$(playerctl -p spotify metadata title)
#	if [[ "$status" == "Playing" ]] ; then status="" ; else status="" ; fi
	if [[ "$status" == "Playing" ]] ; then status="" ; else status="" ; fi
#	echo "$status $artist – $title"
	echo "%{F#C0C5CE}$status%{F-} $artist – $title"
#fi
