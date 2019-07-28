#!/usr/bin/env sh

killall -q conky

while pgrep -u $UID -x conky >/dev/null; do sleep 1; done

conky
 
