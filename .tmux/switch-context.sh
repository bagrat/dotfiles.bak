#!/bin/bash

DEST="$1"
CMD="$2"
SES="$3"
SCRIPT="nop.sh"
STATE="`tmux show-options -qv -t $SES @current-state`"

# if [[ ! $CMD =~ (Init|tmux|ssh|mosh|vim) ]]
# then
#     exit 0
# fi

if [ $TMUX_INIT_STATE == "active" ]
then
    # This means that we are on the local host.
    # So in case of S-Down, we need to inactivate
    # and switch to the child tmux. Otherwise, get
    # activated
    if [ $DEST == "Init" ]
    then
        SCRIPT="active.sh"
        tmux set-option -t $SES @current-state "active"
    else
        if [ $DEST == "Down" ] && [ $STATE == "active" ]
        then
            SCRIPT="inactive.sh"
            tmux set-option -t $SES @current-state "inactive"
            # As this is the local host, we are controlling
            # The S-* keys, so we need to send those keys to
            # the child. The child cannot send it upwards, so
            # We catch it in advance.
            if [[ $CMD =~ (Init|tmux|ssh|mosh|vim) ]]
            then
                tmux send-keys -t $SES: S-$DEST
            fi
        elif [ $DEST == "Up" ] && [ $STATE == "inactive" ]
        then
            SCRIPT="active.sh"
            tmux set-option -t $SES @current-state "active"
            if [[ $CMD =~ (Init|tmux|ssh|mosh|vim) ]]
            then
                tmux send-keys -t $SES: S-$DEST
            fi
        fi
    fi
else
    if [ $DEST == "Init" ]
    then
        tmux set-option -t $SES @current-state "inactive"
        SCRIPT="inactive.sh"
    else
        if [ $DEST == "Down" ] && [ $STATE == "inactive" ]
        then
            SCRIPT="active.sh"
            tmux set-option -t $SES @current-state "active"
        elif [ $DEST == "Up" ] && [ $STATE == "active" ]
        then
            SCRIPT="inactive.sh"
            tmux set-option -t $SES @current-state "inactive"
        fi
    fi
fi

~/.tmux/$SCRIPT
