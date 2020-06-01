
#!/bin/bash
dinput () {
(ls $HOME/Wallpapers/VideoWallpapers | dmenu -p "Background Video:") <&-
}
url=$(dinput)
pkill -f mplayer
mplayer -loop 0 -rootwin -ao null -noconsolecontrols -fs $HOME/Wallpapers/VideoWallpapers/$url

