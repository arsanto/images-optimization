#! /bin/sh

EXTENSIONS="png"

if [ -z "$1" ]; then
    DIR="`pwd`"
else
    DIR="$1"
fi

# Optimize PNG images
find "$DIR" -regextype posix-egrep -regex ".*\.($EXTENSIONS)\$" -type f | xargs -I{} optipng "{}"
