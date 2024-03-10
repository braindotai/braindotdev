#!/bin/bash

command_exists() {
    command -v "$1" 
}

backup_existing_files() {
    local file
    for file in "$@"; do
        if [ -e "$file" ]; then
            mv "$file" "$file.bak"
        fi
    done
}

if ! command_exists zsh; then
    paru -Sy --noconfirm zsh
    sudo chsh -s "$(command -v zsh)" "$USER"
fi

# Install Oh My Zsh if not installed
if [ ! -d "$HOME/.oh-my-zsh" ]; then
    echo "🫨 Installing oh my zsh 🫨"
    wget -qO - https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh | zsh -s
fi

# Backup existing files beforeinstalling Powerlevel10k themernd plugins
backup_existing_files "$HOME/.zshrc" "$HOME/.p10k.zsh" "$HOME/.config/kitty"

# Install Powerlevel10k theme if not installed
if [ ! -d "${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k" ]; then
    echo "🔌 Installing powerlevel10k 🔌"
    git clone --depth=1 https://github.com/romkatv/powerlevel10k.git "${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k"
fi

# Install zsh-autosuggestions if not installed
if [ ! -d "${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions" ]; then
    echo "✏️  Installing zsh autosuggestions ✏️"
    git clone https://github.com/zsh-users/zsh-autosuggestions "${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/zsh-autosuggestions"
fi

# Install zsh-syntax-highlighting if not installed
if [ ! -d "${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting" ]; then
    echo "🌈 Installing zsh syntax highlighting 🌈"
    git clone https://github.com/zsh-users/zsh-syntax-highlighting.git "${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting" 
fi

# Install zsh-autocomplete if not installed
if [ ! -d "${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autocomplete" ]; then
    echo "✍  Installing zsh autocomplete ✍"
    git clone https://github.com/marlonrichert/zsh-autocomplete.git "${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/zsh-autocomplete" 
fi


########## STOW SETUP ##########
ORIGINAL_DIR=$(pwd)
cd ~/Desktop/GitHub/braindotdev/zsh/config
stow -vt ~/ .
cd "$ORIGINAL_DIR"
