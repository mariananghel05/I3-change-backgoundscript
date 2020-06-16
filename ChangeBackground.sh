#!bind/bash 


#Dmenu Select Wallpaper  
dinput () {
	    (ls /home/marian05/Wallpapers -I "VideoWallpapers"   | dmenu -i -p "Background Image:") <&-
	    }
#Set The Wallpaper
	    url=$(dinput)
        feh --bg-scale /home/marian05/Wallpapers/$url
#Save name of Wallpaper for Startup
		rm $HOME/MyScripts/Background.txt && touch $HOME/MyScripts/Background.txt && echo "$url" >> $HOME/MyScripts/Background.txt