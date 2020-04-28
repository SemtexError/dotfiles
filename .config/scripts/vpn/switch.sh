LOCATION=$(node ~/.config/scripts/vpn/locations.js | dmenu -i -matching fuzzy -no-custom -p "Location")

ID=$(echo $LOCATION | cut -d' ' -f1)
NAME=$(echo $LOCATION | cut -d' ' -f2)

if [ -n "$ID" ]; then
    if [ "$ID" -eq "disconnect" ]; then
        expressvpn disconnect
    else
        expressvpn disconnect; expressvpn connect $ID
    fi
fi

