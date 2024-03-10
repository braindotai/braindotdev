########## Install paru ##########
echo "🖥️ Installing cli utilities 🖥️"

sudo pacman -Sy --needed --noconfirm base-devel

ORIGINAL_DIR=$(pwd)
cd ~/Desktop/GitHub/Packages
git clone https://aur.archlinux.org/paru.git
cd paru
makepkg -si --noconfirm
cd "$ORIGINAL_DIR"


########## Install utilities ##########
paru -Sy --noconfirm fastfetch
paru -Sy --noconfirm cpufetch
paru -Sy --noconfirm nvitop
paru -Sy --noconfirm pacseek
paru -Sy --noconfirm speedtest-cli
paru -Sy --noconfirm gdu
paru -Sy --noconfirm toipe
paru -Sy --noconfirm duf
paru -Sy --noconfirm tldr
paru -Sy --noconfirm csvtomd
