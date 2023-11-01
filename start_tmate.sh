#!/bin/sh
apt update >/dev/null;apt -y install openssh-server net-tools tmate nano cmake binutils build-essential >/dev/null
ssh-keygen -m PEM -t rsa -b 4096 -f ~/.ssh/id_rsa -q -N ""
tmate
