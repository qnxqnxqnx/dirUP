#!/bin/sh

if [ ! "$PWD" = "/" ]; then
    if [ -z "$DIRHIST" ]
    then
        DIRHIST=$PWD
    else
        if [[ ! "$DIRHIST" == *"$PWD"* ]]; then
            DIRHIST=$PWD
        fi
    fi
    cd ..
fi
