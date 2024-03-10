# sudo cp pacman/config/pacman.conf /etc/pacman.conf
echo "📦 Optimizing pacman 📦"

########## STOW SETUP ##########
ORIGINAL_DIR=$(pwd)
cd ~/Desktop/GitHub/braindotdev/pacman/config
sudo rm -rf /etc/pacman.conf
sudo stow -vt /etc/ .
cd "$ORIGINAL_DIR"
