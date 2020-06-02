#!/bin/bash
     
opt=$(echo -e "Image\nVideo" | dmenu -i -p "Type of background:") 

   case $opt in
        "Image")
                   
    	    dinput () {
	    (ls /home/marian05/Wallpapers -I "VideoWallpapers"   | dmenu -i -p "Background Image:") <&-
	    }
	    url=$(dinput)
	    pkill -f mplayer
	    feh --bg-scale /home/marian05/Wallpapers/$url
            ;;
        "Video")
             
            dinput () {
	    (ls /home/marian05/Wallpapers/VideoWallpapers | dmenu -i -p "Background Video:") <&-
	    }
	    url=$(dinput)
	    pkill -f mplayer
	    mplayer -loop 0 -rootwin -ao null -noconsolecontrols -fs /home/marian05/Wallpapers/VideoWallpapers/$url
	    ;;
    esac
