STATUS=$(expressvpn status | head -n 1 | sed -r 's/\[.*?m//g')
RESULT=''
RED='\033[0;31m'

if [[ "$STATUS" == *"Not connected"* ]]; then
    RESULT="${RESULT}"
else
    RESULT="${RESULT}"
fi

RESULT="${RESULT}${STATUS}"
echo $RESULT