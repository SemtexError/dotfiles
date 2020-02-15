#!/usr/bin/env sh

killall -q flashfocus

while pgrep -u $UID -x flashfocus >/dev/null; do sleep 1; done

flashfocus &
