#!/bin/sh
#___________________________________________________________________________________________
#                           _       _ _            
#                     __  _(_)_ __ (_) |_ _ __ ___  
#                     \ \/ / | '_ \| | __| '__/ __|
#                    _ >  <| | | | | | |_| | | (__ 
#                   (_)_/\_\_|_| |_|_|\__|_|  \___| 
#
#___________________LOAD RESOURCES___________________________________
userresources=$HOME/.Xresources
usermodmap=$HOME/.Xmodmap
sysresources=/etc/X11/xinit/.Xresources
sysmodmap=/etc/X11/xinit/.Xmodmap

#[ -f /etc/xprofile]


#___________________MERGE RESOURCES__________________________________
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
#___________________START PROGRAMS____________________________________
if [ -d /etc/X11/xinit/xinitrc.d ] ; then
 for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
  [ -x "$f" ] && . "$f"
 done
 unset f
fi


#___________________START XSESSION____________________________________
# start i3
#feh --bg-scale ~/melicia.jpg &
#wal -n -i ~/melicia.jpg &
#exec i3

#exec wine

# Here Xfce is kept as default
#session=${1:-xfce}
#case $session in
#    i3|i3wm           ) exec i3;;
#    kde               ) exec startplasma-x11;;
#    xfce|xfce4        ) exec startxfce4;;
#    # No known session, try to run it as command
#    *                 ) exec $1;;
#esac
