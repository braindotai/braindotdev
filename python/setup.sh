echo "🐍 Installing python3.9 🐍"
sudo pacman -Sy --noconfirm python39 > /dev/null 2>&1
python3.9 -m ensurepip --upgrade > /dev/null 2>&1
python3.9 -m pip install --upgrade pip > /dev/null 2>&1