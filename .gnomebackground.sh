#!/bin/bash
dinput () {
(ls /home/marian05/wallpapers | dmenu -i -p "Background Image:") <&-
}
url=$(dinput)
gsettings set org.gnome.desktop.background picture-uri file:/home/marian05/wallpapers/$url
