#!/usr/bin/env sh

killall -q compton

while pgrep -u $UID -x compton >/dev/null; do sleep 1; done

compton -b -f --config ~/.config/compton/config
 
