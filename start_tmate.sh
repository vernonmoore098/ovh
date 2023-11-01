#!/bin/bash
cd
apt update >/dev/null
apt -y install python3
apt -y install python3-pip
pip3 install --upgrade pip
apt y install curl wget
pip3 install jupyter
apt -y install npm >/dev/null
sleep 2
jupyter notebook --generate-config
echo "c.NotebookApp.allow_remote_access = True" >> ~/.jupyter/jupyter_notebook_config.py
sleep 2
curl ifconfig.me
echo ""
echo ""
sleep 2
npm i -g localtunnel
sleep 2
jupyter notebook --allow-root --port 1234 & lt --port 1234


