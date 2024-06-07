#!/bin/sh -e

echo '[Files]'

for _ in \
    'Bind=/dev/dri' \
    "Bind=$HOME/Desktop" \
    "Bind=$HOME/Documents" \
    "Bind=$HOME/Downloads" \
    'BindReadOnly=/run/pcscd/pcscd.comm' \
    'BindReadOnly=/tmp/.X11-unix'
do
    if [ -e "$( echo "$_" | cut -d= -f2 )" ]
    then
        echo "$_"
    fi
done

echo ''
echo '[Exec]'
echo 'PrivateUsers=no'
