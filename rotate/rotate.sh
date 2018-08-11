#/bin/bash

DEVICE="ELAN Touchscreen"

case "$1" in
	normal)
		xrandr -o normal
		xinput set-prop "${DEVICE}" 'Coordinate Transformation Matrix' 1 0 0 0 1 0 0 0 1
		;;
	inverted)
		xrandr -o inverted
		xinput set-prop "${DEVICE}" 'Coordinate Transformation Matrix' -1 0 1 0 -1 1 0 0 1
		;;
	left)
		xrandr -o left
		xinput set-prop "${DEVICE}" 'Coordinate Transformation Matrix' 0 -1 1 1 0 0 0 0 1
		;;
	right)
		xrandr -o right
		xinput set-prop "${DEVICE}" 'Coordinate Transformation Matrix' 0 1 0 -1 0 1 0 0 1
		;;
esac
