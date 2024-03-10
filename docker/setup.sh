#!/bin/bash

command_exists() {
    command -v "$1" 
}

if ! command_exists docker; then
    echo "🐳 Installing docker  🐳"
    paru -Sy --noconfirm docker
    paru -Sy --noconfirm docker-compose
    # sudo cp ~/Desktop/GitHub/braindotdev/docker/config/daemon.json /etc/docker/daemon.json
    # https://docs.docker.com/reference/cli/dockerd/#daemon-configuration-file
fi

########## STOW SETUP ##########
ORIGINAL_DIR=$(pwd)
sudo mkdir -p /etc/docker/
cd ~/Desktop/GitHub/braindotdev/docker/config/
sudo stow -vt /etc/docker/ .
cd "$ORIGINAL_DIR"
