echo '💠 Instaling fonts 💠'
mkdir -p ~/.local/share/fonts
cp ~/Desktop/GitHub/braindotdev/assets/*.ttf ~/.local/share/fonts/
fc-cache -f -v > /dev/null 2>&1