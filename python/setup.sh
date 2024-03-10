echo "🐍 Installing python3.9 🐍"
sudo pacman -Sy --noconfirm python39 > /dev/null
python3.9 -m ensurepip --upgrade
python3.9 -m pip install --upgrade pip