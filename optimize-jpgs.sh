#! /bin/sh

EXTENSIONS="jpe?g"

if [ -z "$1" ]; then
    DIR="`pwd`"
else
    DIR="$1"
fi

# Optimize JPEG images
find "$DIR" -regextype posix-egrep -regex ".*\.($EXTENSIONS)\$" -type f | xargs -I{} jpegtran -optimize -progressive -outfile "{}" "{}"
