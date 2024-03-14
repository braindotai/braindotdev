# sudo cp pacman/config/pacman.conf /etc/pacman.conf
echo -e "📦 Configuring pacman 📦"

########## STOW SETUP ##########
ORIGINAL_DIR=$(pwd)
cd ~/Desktop/GitHub/braindotdev/pacman/config
sudo rm -rf /etc/pacman.conf
sudo stow -vt /etc/ . > /dev/null 2>&1
cd "$ORIGINAL_DIR"
