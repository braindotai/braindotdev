command_exists() {
    command -v "$1" 
}

########## Install paru ##########
echo -e "🖥️  Configuring cli utilities 🖥️"

if ! command_exists paru; then
    ORIGINAL_DIR=$(pwd)
    rm -rf ~/Desktop/GitHub/Packages/paru
    cd ~/Desktop/GitHub/Packages
    git clone https://aur.archlinux.org/paru.git > /dev/null 2>&1
    cd paru
    makepkg -si --noconfirm > /dev/null 2>&1
    cd "$ORIGINAL_DIR"
fi

########## Install utilities ##########
if ! command_exists stow; then
    paru -Sy --noconfirm stow > /dev/null 2>&1
fi
if ! command_exists fastfetch; then
    paru -Sy --noconfirm fastfetch > /dev/null 2>&1
fi
if ! command_exists cpufetch; then
    paru -Sy --noconfirm cpufetch > /dev/null 2>&1
fi
if ! command_exists pacseek; then
    paru -Sy --noconfirm pacseek > /dev/null 2>&1
fi
if ! command_exists speedtest; then
    paru -Sy --noconfirm speedtest-cli > /dev/null 2>&1
fi
if ! command_exists gdu; then
    paru -Sy --noconfirm gdu > /dev/null 2>&1
fi
if ! command_exists toipe; then
    paru -Sy --noconfirm toipe > /dev/null 2>&1
fi
if ! command_exists duf; then
    paru -Sy --noconfirm duf > /dev/null 2>&1
fi
if ! command_exists tldr; then
    paru -Sy --noconfirm tldr > /dev/null 2>&1
fi
if ! command_exists yt-dlp; then
    paru -Sy --noconfirm yt-dlp > /dev/null 2>&1
fi
if ! command_exists btop; then
    paru -Sy --noconfirm btop > /dev/null 2>&1
fi
if ! command_exists autojump; then
    paru -Sy --noconfirm autojump > /dev/null 2>&1
fi
if ! command_exists rmtrash; then
    paru -Sy --noconfirm rmtrash > /dev/null 2>&1
fi
