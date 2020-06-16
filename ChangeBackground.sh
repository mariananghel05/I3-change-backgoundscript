#!bind/bash 


#Dmenu Select Wallpaper 
dinput () {
(ls $HOME/Wallpapers/ | dmenu -i -p "Select Section") <&-
} 
		url=$(dinput)
dinput () {
	    (ls /home/marian05/Wallpapers/$url   | dmenu -i -p "Background Image:") <&-
	    }
#Set The Wallpaper
	    url2="$url/$(dinput)"
        feh --bg-scale /home/marian05/Wallpapers/$url2
#Save name of Wallpaper for Startup
		rm $HOME/MyScripts/Background.txt && touch $HOME/MyScripts/Background.txt && echo "$url2" >> $HOME/MyScripts/Background.txt
