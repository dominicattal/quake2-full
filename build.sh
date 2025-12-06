#!/bin/bash

devenv quake2.sln -build "$1" -project game -projectconfig "$1" -out "log.txt"
if [ $? -ne 0 ]; then
    cat "log.txt"
    rm "log.txt"
    exit 1
fi
rm -rf release
rm "log.txt"
exit 0
