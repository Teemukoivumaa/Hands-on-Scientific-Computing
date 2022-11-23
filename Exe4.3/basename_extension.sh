#!bin/bash

function get_basename() {
    basename="${1##*/}"
    if [[ ${#basename} -ne 0 ]]; then 
        echo "${basename%.*}"
    else
        echo ""
    fi
}

function get_extension() {
    filename=$(basename -- "$1")

    if [[ "$filename" =~ .*".".* ]]; then
        extension="${filename##*.}"
        echo "$extension"
    else
        echo ""
    fi
}
