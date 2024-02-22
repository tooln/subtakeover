#!/bin/bash

sleep 1
apt update
sleep 1
subfinder -up
sleep 1
git clone https://github.com/PentestPad/subzy.git
sleep 1
cd subzy && wget https://tooln.github.io/subtakeover/script.sh && chmod +x *
sleep 1
go version && ls
sleep 1
go run main.go version
sleep 1
cd runner && cp fingerprints.json /sec/root/subzy
sleep 1
cd /sec/root/subzy && go run main.go run --target evil.com
sleep 1
