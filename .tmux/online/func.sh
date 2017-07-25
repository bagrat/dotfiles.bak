

function online_icon {
    ping -c 1 google.com 2>&1 > /dev/null
    OFFLINE=$?

    ONLINE_ICON=""
    OFFLINE_ICON=""

    if [ $OFFLINE -gt 0 ]
    then
        echo "$OFFLINE_ICON"
    else
        echo "$ONLINE_ICON"
    fi
}
