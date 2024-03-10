# sudo cp pacman/config/pacman.conf /etc/pacman.conf

########## STOW SETUP ##########
ORIGINAL_DIR=$(pwd)
cd ~/Desktop/GitHub/braindotdev/pacman/config
sudo stow -vt /etc/ .
cd "$ORIGINAL_DIR"
