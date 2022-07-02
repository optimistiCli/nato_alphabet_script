#!/bin/bash

function natostdin {
    tr -dc 0-9a-zA-Z | \
    while read -n 1 C; do
        case $C in
            A)
                echo -n 'ALPHA '
                ;;
            B)
                echo -n 'BRAVO '
                ;;
            C)
                echo -n 'CHARLIE '
                ;;
            D)
                echo -n 'DELTA '
                ;;
            E)
                echo -n 'ECHO '
                ;;
            F)
                echo -n 'FOXTROT '
                ;;
            G)
                echo -n 'GOLF '
                ;;
            H)
                echo -n 'HOTEL '
                ;;
            I)
                echo -n 'INDIA '
                ;;
            J)
                echo -n 'JULIETT '
                ;;
            K)
                echo -n 'KILO '
                ;;
            L)
                echo -n 'LIMA '
                ;;
            M)
                echo -n 'MIKE '
                ;;
            N)
                echo -n 'NOVEMBER '
                ;;
            O)
                echo -n 'OSCAR '
                ;;
            P)
                echo -n 'PAPA '
                ;;
            Q)
                echo -n 'QUEBEC '
                ;;
            R)
                echo -n 'ROMEO '
                ;;
            S)
                echo -n 'SIERRA '
                ;;
            T)
                echo -n 'TANGO '
                ;;
            U)
                echo -n 'UNIFORM '
                ;;
            V)
                echo -n 'VICTOR '
                ;;
            W)
                echo -n 'WHISKEY '
                ;;
            X)
                echo -n 'X-RAY '
                ;;
            Y)
                echo -n 'YANKEE '
                ;;
            Z)
                echo -n 'ZULU '
                ;;
            a)
                echo -n 'alpha '
                ;;
            b)
                echo -n 'bravo '
                ;;
            c)
                echo -n 'charlie '
                ;;
            d)
                echo -n 'delta '
                ;;
            e)
                echo -n 'echo '
                ;;
            f)
                echo -n 'foxtrot '
                ;;
            g)
                echo -n 'golf '
                ;;
            h)
                echo -n 'hotel '
                ;;
            i)
                echo -n 'india '
                ;;
            j)
                echo -n 'juliett '
                ;;
            k)
                echo -n 'kilo '
                ;;
            l)
                echo -n 'lima '
                ;;
            m)
                echo -n 'mike '
                ;;
            n)
                echo -n 'november '
                ;;
            o)
                echo -n 'oscar '
                ;;
            p)
                echo -n 'papa '
                ;;
            q)
                echo -n 'quebec '
                ;;
            r)
                echo -n 'romeo '
                ;;
            s)
                echo -n 'sierra '
                ;;
            t)
                echo -n 'tango '
                ;;
            u)
                echo -n 'uniform '
                ;;
            v)
                echo -n 'victor '
                ;;
            w)
                echo -n 'whiskey '
                ;;
            x)
                echo -n 'x-ray '
                ;;
            y)
                echo -n 'yankee '
                ;;
            z)
                echo -n 'zulu '
                ;;
            0)
                echo -n 'zero '
                ;;
            0)
                echo -n 'Zero '
                ;;
            1)
                echo -n 'One '
                ;;
            2)
                echo -n 'Two '
                ;;
            3)
                echo -n 'Three '
                ;;
            4)
                echo -n 'Four '
                ;;
            5)
                echo -n 'Fiver '
                ;;
            6)
                echo -n 'Six '
                ;;
            7)
                echo -n 'Seven '
                ;;
            8)
                echo -n 'Eight '
                ;;
            9)
                echo -n 'Niner '
                ;;
        esac
    done | \
    sed 's/[[:blank:]]*\$//; s/\([[:alnum:]][[:alnum:][:blank:]]\{1,72\}\)[[:blank:]]\([[:alnum:]]\)/\1\n\2/g'

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
