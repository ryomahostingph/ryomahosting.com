#!/bin/sh
RYOMA_DIR=/usr/share/ryoma
xterm -title "Login Server" -bg black -fg white -hold -e $RYOMA_DIR/scripts/start_login_server.sh &
sleep 1
xterm -title "Char Server" -bg black -fg white -hold -e $RYOMA_DIR/scripts/start_char_server.sh &
sleep 1
xterm -title "Map Server" -bg black -fg white -hold -e $RYOMA_DIR/scripts/start_map_server.sh &
