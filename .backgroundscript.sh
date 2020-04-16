#!/bin/bash
dinput () {
(ls /home/marian05/wallpapers | dmenu -p "Background Image:") <&-
}
url=$(dinput)
feh --bg-scale /home/marian05/wallpapers/$url
