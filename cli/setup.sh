command_exists() {
    command -v "$1" 
}

########## Install paru ##########
echo -e "🖥️  Configuring cli utilities 🖥️"

if ! command_exists paru; then
    ORIGINAL_DIR=$(pwd)
    rm -rf ~/Desktop/GitHub/Packages/paru
    cd ~/Desktop/GitHub/Packages
    git clone https://aur.archlinux.org/paru.git 
    cd paru
    makepkg -si --noconfirm
    cd "$ORIGINAL_DIR"
fi

########## Install utilities ##########
if ! command_exists stow; then
    paru -Sy --noconfirm stow
fi
if ! command_exists fastfetch; then
    paru -Sy --noconfirm fastfetch
fi
if ! command_exists cpufetch; then
    paru -Sy --noconfirm cpufetch
fi
if ! command_exists pacseek; then
    paru -Sy --noconfirm pacseek
fi
if ! command_exists speedtest; then
    paru -Sy --noconfirm speedtest-cli
fi
if ! command_exists gdu; then
    paru -Sy --noconfirm gdu
fi
if ! command_exists toipe; then
    paru -Sy --noconfirm toipe
fi
if ! command_exists duf; then
    paru -Sy --noconfirm duf
fi
if ! command_exists tldr; then
    paru -Sy --noconfirm tldr
fi
if ! command_exists yt-dlp; then
    paru -Sy --noconfirm yt-dlp
fi
if ! command_exists btop; then
    paru -Sy --noconfirm btop
fi
if ! command_exists autojump; then
    paru -Sy --noconfirm autojump
fi
if ! command_exists rmtrash; then
    paru -Sy --noconfirm rmtrash
fi
