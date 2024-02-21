#!/bin/bash

NEW='\033[1;38;5;154m'
PINK='\033[1;38;5;013m'
BLUE='\033[1;38;5;012m'
GREEN='\033[1;38;5;040m'
CG='\033[1;38;5;087m'
CPO='\033[1;38;5;205m'

echo -e ${GREEN}"\n"
figlet -f slant -c "SUBTAKEOVER" | lolcat && figlet -f digital -c "Version: 1.0" | lolcat
echo -e ${CPO}"\nTools: Mass Subdomain Takeover Scanner"
sleep 1

echo -e ${PINK}"\n"
subfinder -dL /sec/root/subzy/sub.txt -o /sec/root/subs.txt -all
echo -e ${GREEN}"\n"
go run main.go run --targets /sec/root/subs.txt --hide_fails
sleep 1
echo -e ${NEW}"\n\n                  Scanning has finished.\n\n"
sleep 2
