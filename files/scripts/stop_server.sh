#!/bin/sh
zenity --question --title="Ryoma" --text="Are you sure you would like to turn off your rAthena server?"
if [ $? = 0 ]; then
	killall -9 login-server
	killall -9 char-server
	killall -9 map-server
	zenity --info --title="Ryoma" --text="Your rAthena server has been stopped." 
else
	exit
fi
