#!/bin/bash


if [[ $# -ne 1 ]]; then
    echo "Usage: ./run.sh [image file]"
    exit 1
fi

make run IMG_FILE=$1
