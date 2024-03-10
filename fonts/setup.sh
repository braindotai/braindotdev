echo '💠 Instaling fonts 💠'
sudo mkdir -p ~/.local/share/fonts
sudo cp ~/Desktop/GitHub/braindotdev/assets/assets/*.ttf ~/.local/share/fonts/
fc-cache -f -v