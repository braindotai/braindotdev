########## STOW SETUP ##########
ORIGINAL_DIR=$(pwd)
cd ~/Desktop/GitHub/braindotdev/git/config
stow -vt ~/ . > /dev/null 2>&1
cd "$ORIGINAL_DIR"

git config --global core.excludesfile ~/.gitignore