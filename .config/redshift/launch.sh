#!/usr/bin/env sh

killall -q redshift-gtk

while pgrep -u $UID -x redshift-gtk >/dev/null; do sleep 1; done

redshift-gtk &
