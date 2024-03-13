command_exists() {
    command -v "$1" 
}

echo -e "🐍 Configuring python3.9 🐍"

paru -Sy --noconfirm python39 > /dev/null 2>&1
if ! command_exists pip3.9; then
    echo -e "🛍️  Configuring pip3.9 🛍️"
    python3.9 -m ensurepip --upgrade > /dev/null 2>&1
    python3.9 -m pip install --upgrade pip > /dev/null 2>&1
    echo -e "🎁 Configuring python packages 🎁"
    python3.9 -m pip install nvitop numpy matplotlib tqdm pandas seaborn ipython pipx --no-cache-dir > /dev/null 2>&1
    pipx install poetry > /dev/null 2>&1
fi