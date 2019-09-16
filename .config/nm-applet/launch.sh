#!/usr/bin/env sh

killall -q nm-applet

while pgrep -u $UID -x nm-applet >/dev/null; do sleep 1; done

nm-applet
 
