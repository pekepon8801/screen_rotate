#!/bin/bash

if [ -e ~/bin/rotate/rotatelock.txt ]; then
    echo "<img>${HOME}/bin/rotate/screen_rotate_lock_24.png</img>"
    TOOLTIP="Screen rotation is lock."
else
    echo "<img>${HOME}/bin/rotate/screen_rotate_24.png</img>"
    TOOLTIP="Screen rotation is possible."
fi

echo "<tool>"${TOOLTIP}"</tool>"

echo "<click>${HOME}/bin/rotate/rotate_change.sh</click>"
