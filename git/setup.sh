########## STOW SETUP ##########
ORIGINAL_DIR=$(pwd)
cd ~/Desktop/GitHub/braindotdev/git/config
stow -vt ~/ .
cd "$ORIGINAL_DIR"

git config --global core.excludesfile ~/.gitignore
# git config --global core.excludesfile ~/Desktop/GitHub/braindotdev/git/config/.gitignore
