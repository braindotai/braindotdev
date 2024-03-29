#!/bin/bash

command_exists() {
    command -v "$1" 
}

echo -e "🐈 Configuring kitty 🐈"

# Install Kitty terminal if not installed
if ! command_exists kitty; then
    paru -Sy --noconfirm kitty > /dev/null 2>&1
fi

########## STOW SETUP ##########
ORIGINAL_DIR=$(pwd)
sudo mkdir -p ~/.config/kitty
cd $HOME/Desktop/GitHub/braindotdev/kitty/config/
sudo stow -vt ~/.config/kitty/ . > /dev/null 2>&1
cd "$ORIGINAL_DIR"
