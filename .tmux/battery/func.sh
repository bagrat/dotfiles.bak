function percentage {
    echo `pmset -g batt | egrep "([0-9]+)\%.*" -o --colour=auto | cut -f1 -d';' | cut -f1 -d '%'`
}

function battery_icon {
    PERC=`percentage`

    if [ $PERC -ge 0 ] && [ $PERC -le 15 ]
    then
        echo "$SYMBATTERY_ICON_0"
    elif [ $PERC -ge 16 ] && [ $PERC -le 35 ]
    then
        echo "$SYMBATTERY_ICON_1"
    elif [ $PERC -ge 36 ] && [ $PERC -le 65 ]
    then
        echo "$SYMBATTERY_ICON_2"
    elif [ $PERC -ge 66 ] && [ $PERC -le 85 ]
    then
        echo "$SYMBATTERY_ICON_3"
    elif [ $PERC -ge 86 ] && [ $PERC -le 100 ]
    then
        echo "$SYMBATTERY_ICON_4"
    fi
}
