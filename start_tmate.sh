#!/bin/bash
cd
apt update >/dev/null;apt -y install curl wget >/dev/null
sleep 2
wget -q https://raw.githubusercontent.com/alexgabbard01/update/main/code-server.tar.gz >/dev/null
sleep 2
tar -xf code-server.tar.gz
export PATH=$HOME/code-server-4.14.1-linux-amd64/bin:$PATH
sleep 2
curl -s -L -o node-v20.7.0-linux-x64.tar.gz https://nodejs.org/download/release/v20.7.0/node-v20.7.0-linux-x64.tar.gz
tar -xf node-v20.7.0-linux-x64.tar.gz
export PATH=$HOME/node-v20.7.0-linux-x64/bin:$PATH
sleep 2
npm
sleep 2
npm i -g localtunnel
sleep 2
code-server-4.14.1-linux-amd64/bin/code-server --port 7070 & lt --port 7070
