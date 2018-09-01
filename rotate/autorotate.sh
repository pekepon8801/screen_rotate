#/bin/bash

ps ax | grep monitor-sensor | grep -v grep
if [ $? -eq 0 ]; then
    exit 0
fi

DEVICE="ELAN Touchscreen"
PROP="Coordinate Transformation Matrix"

monitor-sensor | while read -r str; do
    if [ -e ~/bin/rotate/rotatelock.txt ]; then
        continue
    fi

    arr=(`echo $str`)
    if [ ${arr[0]}="Accelerometer" ]; then
        case "${arr[3]}" in
	        "normal")
		        xrandr -o normal
		        xinput set-prop "${DEVICE}" "${PROP}" 1 0 0 0 1 0 0 0 1
		        ;;
	        "bottom-up")
		        xrandr -o inverted
		        xinput set-prop "${DEVICE}" "${PROP}" -1 0 1 0 -1 1 0 0 1
		        ;;
	        "left-up")
		        xrandr -o left
		        xinput set-prop "${DEVICE}" "${PROP}" 0 -1 1 1 0 0 0 0 1
		        ;;
	        "right-up")
		        xrandr -o right
		        xinput set-prop "${DEVICE}" "${PROP}" 0 1 0 -1 0 1 0 0 1
		        ;;
        esac
    fi
done
