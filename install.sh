mkdir -p ~/Desktop/GitHub/Packages

git clone https://github.com/braindotai/braindotdev ~/Desktop/GitHub/braindotdev > /dev/null 2>&1
cd ~/Desktop/GitHub/braindotdev

bash cli/setup.sh
bash docker/setup.sh
# no setup for exports
bash flathub/setup.sh
bash fonts/setup.sh
bash git/setup.sh
bash kitty/setup.sh
bash pacman/setup.sh
bash python/setup.sh
bash vscode/setup.sh
bash zsh/setup.sh