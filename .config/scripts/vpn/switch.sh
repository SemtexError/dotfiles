LOCATION=$(node ~/.config/scripts/vpn/locations.js | dmenu -i -matching fuzzy -no-custom -p "Location")

ID=$(echo $LOCATION | cut -d' ' -f1)

if [ -n "$ID" ]; then
    expressvpn disconnect; expressvpn connect $ID
fi

