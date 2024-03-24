echo -e '\n                                                                                                                                                                                                   ─╯
 ______              _           _               _             
(____  \            (_)         | |       _     | |            
 ____)  ) ____ _____ _ ____   __| | ___ _| |_ __| |_____ _   _ 
|  __  ( / ___|____ | |  _ \ / _  |/ _ (_   _) _  | ___ | | | |
| |__)  ) |   / ___ | | | | ( (_| | |_| || |( (_| | ____|\ V / 
|______/|_|   \_____|_|_| |_|\____|\___/  \__)____|_____) \_/  
\n🚀 =================== Initializing Setup =================== 🚀'


echo "🐼 Configuring git 🐼"

sudo pacman -Sy --noconfirm git > /dev/null 2>&1
mkdir -p ~/Desktop/GitHub/Packages
git clone https://github.com/braindotai/braindotdev.git ~/Desktop/GitHub/braindotdev > /dev/null 2>&1
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

echo -e "\n💪🏻 ========== Welcome to the Braindotai ========= 🦾"