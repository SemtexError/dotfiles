#!/usr/bin/env sh

killall -q redshift

while pgrep -u $UID -x redshift >/dev/null; do sleep 1; done

redshift &
