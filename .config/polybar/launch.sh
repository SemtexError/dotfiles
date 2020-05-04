# !/bin/bash

PRIMARY_BAR_NAME=main
SECONDARY_BAR_NAME=secondary

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar > /dev/null; do sleep 1; done

# Display main bar on primary monitor
for m in $(polybar --list-monitors | grep primary | cut -d":" -f1); do
    if [[ $(hostname -s) = "host" ]]; then
        MONITOR=$m SHOWSCREEN=false polybar $PRIMARY_BAR_NAME &
    else
        MONITOR=$m polybar $PRIMARY_BAR_NAME &
    fi
done

# Display secondary bar on secondary monitor(s)
# This bar only contain the essentials
for m in $(polybar --list-monitors | grep -v primary | cut -d":" -f1); do
    if [[ $(hostname -s) = "host" ]]; then
        MONITOR=$m SHOWSCREEN=false polybar $SECONDARY_BAR_NAME &
    else
        MONITOR=$m polybar $SECONDARY_BAR_NAME &
    fi
done
