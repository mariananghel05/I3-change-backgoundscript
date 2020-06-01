#!/bin/bash
dinput () {
(ls $HOME/wallpapers | dmenu -p "Background Image:") <&-
}
url=$(dinput)
feh --bg-scale $HOME/wallpapers/$url
