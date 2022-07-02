#!/bin/bash

function natostdin {
tr -dc 0-9a-zA-Z | \
tr a-z A-Z | \
sed " \
s/A/Alpha /g; \
s/B/Bravo /g; \
s/C/Charlie /g; \
s/D/Delta /g; \
s/E/Echo /g; \
s/F/Foxtrot /g; \
s/G/Golf /g; \
s/H/Hotel /g; \
s/I/India /g; \
s/J/Juliett /g; \
s/K/Kilo /g; \
s/L/Lima /g; \
s/M/Mike /g; \
s/N/November /g; \
s/O/Oscar /g; \
s/P/Papa /g; \
s/Q/Quebec /g; \
s/R/Romeo /g; \
s/S/Sierra /g; \
s/T/Tango /g; \
s/U/Uniform /g; \
s/V/Victor /g; \
s/W/Whiskey /g; \
s/X/X-ray /g; \
s/Y/Yankee /g; \
s/0/Zero /g; \
s/1/One /g; \
s/2/Two /g; \
s/3/Three /g; \
s/4/Four /g; \
s/5/Fiver /g; \
s/6/Six /g; \
s/7/Seven /g; \
s/8/Eight /g; \
s/9/Niner /g; \
"
echo ''
}

if [ -n "$1" ]; then
    # Command line argument
    BUF="$(echo -n "$@")"
elif [ -f /dev/stdin -o -p /dev/stdin ]; then
    # Incoming pipe
    IFS='' read -r -d '' BUF
elif [ $(uname -s) == Darwin ] && BUF="$(pbpaste)" && [ -n "$BUF" ]; then
    # macOS copy-paste buffer
    :
else
    echo Type it here\; Ctrl+D to finish
    IFS='' read -r -d $'\04' BUF
    echo ''
fi

echo -n "$BUF" | natostdin
