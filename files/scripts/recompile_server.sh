#!/bin/sh
zenity --question --title="Ryoma" --text="Are you sure you want to recompile your server? \n\n THIS CAN TAKE UPTO 5 MINUTES TO COMPLETE."
if [ $? = 0 ]; then
	cd /home/rathena/Desktop/rAthena
 	xterm -title "Compile rAthena" -bg black -fg white -e ./configure --enable-packetver=20180621
	xterm -title "Compile rAthena" -bg black -fg white -e make clean
	xterm -title "Compile rAthena" -bg black -fg white -e make server
	zenity --info --title="Ryoma" --text="Your rAthena server has been recompiled."
else
	exit
fi
