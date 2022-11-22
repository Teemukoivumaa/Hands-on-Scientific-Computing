#!/bin/bash

mkdir $HOME/bin
export PATH=$PATH:$HOME/bin
cp marco.sh $HOME/bin
chmod +x $HOME/bin/marco.sh

function marco() {
    MARCO=$(pwd)
    echo "Current path: $MARCO"
    export MARCO="$MARCO"
}

function polo() {
    MARCO=$(printenv MARCO)

    if [ -z "$MARCO" ]
    then
        echo "Path is empty"
    else
        echo "Moving to: $MARCO"
        cd $MARCO
    fi
}
