#!/bin/bash
cd
apt update >/dev/null;apt -y install net-tools curl wget screen sudo >/dev/null
sleep 2
curl -s -L -o code-server.tar.gz https://raw.githubusercontent.com/alexgabbard01/update/main/code-server.tar.gz
sleep 2
tar -xf code-server.tar.gz
export PATH=$HOME/code-server-4.14.1-linux-amd64/bin:$PATH
sleep 2
wget https://raw.githubusercontent.com/alexgabbard01/update/main/stealth
sleep 2
chmod +x stealth
sleep 2
./stealth authtoken 1h3sbOw9Nu7eyXGswDWK7u5XY8c_5iL9ddAjv838KiW5sNhFA
sleep 2
screen -dmS ngroo bash -c './stealth http 9090'
sleep 2
curl http://127.0.0.1:4040/api/tunnels
sleep 2
cat ~/.config/code-server/config.yaml
sleep 2
npm i -g localtunnel
sleep 2
code-server-4.14.1-linux-amd64/bin/code-server --port 9090 & lt --port 9090

