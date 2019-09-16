#!/usr/bin/env sh

polybarName=main

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch polybar
# polybar $polybarName &

if type "xrandr"; then
    for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
        if [[ $(hostname -s) = "host" ]]; then
            MONITOR=$m SHOWSCREEN=false polybar --reload $polybarName &
        else
            MONITOR=$m polybar --reload $polybarName &
        fi
  done
else
  polybar --reload $polybarName &
fi
