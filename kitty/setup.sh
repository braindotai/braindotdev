#!/bin/bash

command_exists() {
    command -v "$1" >/dev/null 2>&1
}

# Install Kitty terminal if not installed
if ! command_exists kitty; then
    echo "🐈 Installing kitty 🐈"
    sudo pacman -Sy --noconfirm kitty > /dev/null 2>&1
fi

########## STOW SETUP ##########
ORIGINAL_DIR=$(pwd)
mkdir -p ~/.config/kitty
cd ~/Desktop/GitHub/braindotdev/kitty/config
stow -vt ~/.config/kitty .
cd "$ORIGINAL_DIR"
