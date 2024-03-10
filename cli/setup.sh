command_exists() {
    command -v "$1" 
}

########## Install paru ##########

if ! command_exists paru; then
    echo "🖥️  Installing cli utilities 🖥️"
    sudo pacman -Sy --needed --noconfirm base-devel

    ORIGINAL_DIR=$(pwd)
    rm -rf ~/Desktop/GitHub/Packages/paru
    cd ~/Desktop/GitHub/Packages
    git clone https://aur.archlinux.org/paru.git 
    cd paru
    makepkg -si --noconfirm
    cd "$ORIGINAL_DIR"
fi

########## Install utilities ##########
paru -Sy --noconfirm stow
paru -Sy --noconfirm fastfetch
paru -Sy --noconfirm cpufetch
# paru -Sy --noconfirm nvitop
paru -Sy --noconfirm pacseek
paru -Sy --noconfirm speedtest-cli
paru -Sy --noconfirm gdu
paru -Sy --noconfirm toipe
paru -Sy --noconfirm duf
paru -Sy --noconfirm tldr
paru -Sy --noconfirm yt-dlp
# paru -Sy --noconfirm csvtomd
