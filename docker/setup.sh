#!/bin/bash

command_exists() {
    command -v "$1" 
}

echo -e "🐳 Configuring docker  🐳"
########## DOCKER SETUP ##########

if ! command_exists docker; then
    paru -Sy --noconfirm docker
    echo -e "🦭 Configuring docker compose  🦭"
    paru -Sy --noconfirm docker-compose
    echo -e "🌊 Configuring nvidia container toolkit  🌊"
    # sudo cp ~/Desktop/GitHub/braindotdev/docker/config/daemon.json /etc/docker/daemon.json
    # https://docs.docker.com/reference/cli/dockerd/#daemon-configuration-file
fi

########## STOW SETUP ##########
ORIGINAL_DIR=$(pwd)
sudo mkdir -p /etc/docker/
cd ~/Desktop/GitHub/braindotdev/docker/config/
sudo stow -vt /etc/docker/ .
cd "$ORIGINAL_DIR"
