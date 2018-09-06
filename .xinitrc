#!/bin/bash

userresources=$HOME/.Xresources
usermodmap=$HOME/.Xmodmap
sysresources=/etc/X11/xinit/.Xresources
sysmodmap=/etc/X11/xinit/.Xmodmap

# merge in defaults and keymaps
if [ -f $sysresources ]; then
    xrdb -merge $sysresources
fi

if [ -f $sysmodmap ]; then
    xmodmap $sysmodmap
fi

if [ -f "$userresources" ]; then
    xrdb -merge "$userresources"
fi

if [ -f "$usermodmap" ]; then
    xmodmap "$usermodmap"
fi

# start some nice programs
if [ -d /etc/X11/xinit/xinitrc.d ] ; then
 for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
  [ -x "$f" ] && . "$f"
 done
 unset f
fi

[[ -e ~/.wrgrd ]] && rm ~/.wrgrd
/usr/bin/setxkbmap de
/usr/bin/compton -b
/usr/bin/dbus-daemon --session --fork
/usr/bin/pulseaudio –-start
/usr/bin/xrdb -load ~/.config/Xresources/themes/base16/dark/ocean
/usr/bin/xrandr --dpi 96
/bin/bash ~/.fehbg &

# Start SLiM chosen DE/WM
exec $1
