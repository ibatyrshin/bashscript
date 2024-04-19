#!/bin/bash

# Update system 
sudo apt update
sudo apt upgrade -y
# sleep 10s

sudo apt install -y mc \
curl \
wget \
htop \
ansible \
tree
sleep 15s

# Install docker & docker compose

sudo bash -c "$(curl -sSL https://get.docker.com/)"

# Add aliases
if [[ -z $(grep 'alias ll="ls -la"' ~/.bashrc) ]]; then
  echo 'alias ll="ls -la"' >> ~/.bashrc
fi

if [[ -z $(grep 'alias c="clear"' ~/.bashrc) ]]; then
  echo 'alias c="clear"' >> ~/.bashrc
fi

if [[ -z $(grep 'alias d="docker"' ~/.bashrc) ]]; then
  echo 'alias d="docker"' >> ~/.bashrc
fi

if [[ -z $(grep 'alias ap="ansible-playbook"' ~/.bashrc) ]]; then
  echo 'alias ap="ansible-playbook"' >> ~/.bashrc
fi

if [[ -z $(grep 'alias dc="docker compose"' ~/.bashrc) ]]; then
  echo 'alias dc="docker compose"' >> ~/.bashrc
fi

if [[ -z $(grep 'alias ht="htop"' ~/.bashrc) ]]; then
  echo 'alias ht="htop"' >> ~/.bashrc
fi


if [[ -z $(grep 'alias me="mcedit"' ~/.bashrc) ]]; then
  echo 'alias me="mcedit"' >> ~/.bashrc
fi

if [[ -z $(grep 'alias t="tree -a"' ~/.bashrc) ]]; then
  echo 'alias t="tree -a"' >> ~/.bashrc
fi

exec bash

sleep 15s
# Install apps


