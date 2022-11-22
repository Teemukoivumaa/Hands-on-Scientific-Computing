#!/bin/bash

MARCO=$(printenv MARCO)
if [ -z "$MARCO" ]
then
      echo "Path is empty"
else
      echo "Moving to: $MARCO"
      cd $MARCO
fi
