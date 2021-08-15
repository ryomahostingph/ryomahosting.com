#!/bin/sh
zenity --question --title="Ryoma" --text="This will update your server to the current master branch. Are you sure you would like to continue?"
if [ $? = 0 ]; then
	killall -9 login-server
	killall -9 char-server
	killall -9 map-server
	cd /home/rathena/Desktop/rAthena
	xterm -title "Updating rAthena" -bg black -fg white -hold -e "git stash && git pull && git stash pop" &
	zenity --info --title="Ryoma" --text="rAthena is updating. Please check the console for any merge conflicts."
else
	exit
fi
