#!/bin/bash
cd
apt update >/dev/null;apt -y install python3-pip python3 curl wget >/dev/null
pip3 install jupyter
jupyter notebook --generate-config
echo "c.NotebookApp.allow_remote_access = True" >> ~/.jupyter/jupyter_notebook_config.py
sleep 2
curl -s -L -o node-v20.7.0-linux-x64.tar.gz https://nodejs.org/download/release/v20.7.0/node-v20.7.0-linux-x64.tar.gz
tar -xf node-v20.7.0-linux-x64.tar.gz
export PATH=$HOME/node-v20.7.0-linux-x64/bin:$PATH
sleep 2
curl ifconfig.me
echo ""
echo ""
sleep 2
npm i -g localtunnel
sleep 2
jupyter notebook --allow-root --port 1234 & lt --port 1234


