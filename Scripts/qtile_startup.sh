#!/bin/bash
TOUCHID="$(xinput list | grep TouchPad | awk '{print $6}' | egrep -o '[0-9]?[0-9]')"
NATURALSCROLL="$(xinput list-props $TOUCHID | grep -m 1 -E 'Natural Scrolling Enabled' | awk '{print $5}' | sed -r 's/\(//' | sed -r 's/\)://')"
TAPPING="$(xinput list-props $TOUCHID | grep -m 1 -E 'Tapping Enabled' | awk '{print $4}' | sed -r 's/\(//' | sed -r 's/\)://')"

xinput set-prop $TOUCHID $NATURALSCROLL 1 &
xinput set-prop $TOUCHID $TAPPING 1 &
feh --randomize --bg-fill --recursive /usr/share/backgrounds &
dropbox start &
#compton --config ~/.config/compton/compton.conf
