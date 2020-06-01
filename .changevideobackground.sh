
#!/bin/bash
dinput () {
(ls /home/marian05/Wallpapers/VideoWallpapers | dmenu -p "Background Video:") <&-
}
url=$(dinput)
pkill -f mplayer
mplayer -loop 0 -rootwin -ao null -noconsolecontrols -fs /home/marian05/Wallpapers/VideoWallpapers/$url

