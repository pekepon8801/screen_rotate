!#/bin/bash

FLAG_FILE="${HOME}/bin/rotate/rotatelock.txt"

if [ -e ${FLAG_FILE} ]; then
    rm -fr ${FLAG_FILE}
else
    touch ${FLAG_FILE}
fi
