echo "🚀 Initializing braindotdev 🚀"

echo "🐼 Configuring git 🐼"

sudo pacman -Sy --noconfirm git
mkdir -p ~/Desktop/GitHub/Packages
git clone https://github.com/braindotai/braindotdev.git ~/Desktop/GitHub/braindotdev
cd ~/Desktop/GitHub/braindotdev

bash cli/setup.sh
bash git/setup.sh
bash pacman/setup.sh
bash docker/setup.sh
bash flathub/setup.sh
bash fonts/setup.sh
bash python/setup.sh
bash vscode/setup.sh
bash zsh/setup.sh
bash kitty/setup.sh

echo 