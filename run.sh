#!/bin/bash


if [[ $# -eq 0 ]]; then
    echo "Usage: ./run.sh [image file] [gdb]"
    exit 1
fi

if [[ $# -eq 2 ]] && [[ $2 == "gdb" ]]; then
    make debug IMG_FILE=$1
else
    make run IMG_FILE=$1
fi
