LOCATION=$(cat ~/.config/scripts/vpn/list.txt | dmenu -i --markup-rows --no-custom --only-match --format)
ID=$(echo $LOCATION | cut -d' ' -f1)

if [ -n "$ID" ]; then
    expressvpn disconnect && expressvpn connect $ID
fi

