#!/bin/bash

mkdir $HOME/bin
export PATH=$PATH:$HOME/bin
cp polo.sh $HOME/bin
chmod +x $HOME/bin/polo.sh

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
