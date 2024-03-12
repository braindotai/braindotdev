echo "🚀 Initializing braindotdev 🚀"

echo "🐼 Configuring git 🐼"

export GIT_CONFIG=~/Desktop/GitHub/braindotdev/git/config/.gitconfig
sudo pacman -Sy --noconfirm git > /dev/null 2>&1
mkdir -p ~/Desktop/GitHub/Packages
git clone https://github.com/braindotai/braindotdev.git ~/Desktop/GitHub/braindotdev > /dev/null 2>&1
cd ~/Desktop/GitHub/braindotdev
git config --global core.excludesfile ~/Desktop/GitHub/braindotdev/git/config/.gitignore

bash cli/setup.sh
bash zsh/setup.sh
bash docker/setup.sh
bash flathub/setup.sh
bash fonts/setup.sh
bash pacman/setup.sh
bash python/setup.sh
bash vscode/setup.sh
bash kitty/setup.sh

echo 