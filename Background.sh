#!bin/bash

#Variables
path="$HOME/Wallpapers/"
image="CartoonRiver.jpg"
File="$HOME/MyScripts/Background.txt"

#ReadFile and set background
image=$(cat $File) && feh --bg-scale $path/$image ||  --bg-scale $path/$image


