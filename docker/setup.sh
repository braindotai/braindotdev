#!/bin/bash

command_exists() {
    command -v "$1" >/dev/null 2>&1
}

if ! command_exists docker; then
    echo "🐳 Installing docker  🐳"
    sudo pacman -Sy --noconfirm docker
    sudo pacman -Sy --noconfirm docker-compose
    # sudo cp ~/Desktop/GitHub/braindotdev/docker/config/daemon.json /etc/docker/daemon.json
    # https://docs.docker.com/reference/cli/dockerd/#daemon-configuration-file
fi

########## STOW SETUP ##########
ORIGINAL_DIR=$(pwd)
mkdir -p /etc/docker/
cd ~/Desktop/GitHub/braindotdev/docker/config/
sudo stow -vt /etc/docker/ .
cd "$ORIGINAL_DIR"
