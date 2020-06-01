#!/bin/bash
dinput () {
(ls $HOME/wallpapers | dmenu -i -p "Background Image:") <&-
}
url=$(dinput)
gsettings set org.gnome.desktop.background picture-uri file:$HOME/wallpapers/$url
