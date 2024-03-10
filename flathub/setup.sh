command_exists() {
    command -v "$1" 
}

if ! command_exists flathub; then
    echo "🛒 Installing flathub 🛒"
    paru -Sy --noconfirm flatpak > /dev/null 2>&1
fi

# if ! command_exists com.github.finefindus.eyedropper; then
#     echo " -> eyedropper... "
#     flatpak install -y com.github.finefindus.eyedropper > /dev/null 2>&1
# fi
# if ! command_exists com.github.huluti.Curtail; then
#     echo " -> curtail... "
#     flatpak install -y com.github.huluti.Curtail > /dev/null 2>&1
# fi
# if ! command_exists com.github.jeromerobert.pdfarranger; then
#     echo " -> pdfarranger... "
#     flatpak install -y com.github.jeromerobert.pdfarranger > /dev/null 2>&1
# fi
# if ! command_exists com.github.tchx84.Flatseal; then
#     echo " -> flatseal ... "
#     flatpak install -y com.github.tchx84.Flatseal  > /dev/null 2>&1
# fi
# if ! command_exists com.mattjakeman.ExtensionManager; then
#     echo " -> extension manager... "
#     flatpak install -y com.mattjakeman.ExtensionManager > /dev/null 2>&1
# fi
# if ! command_exists fr.handbrake.ghb; then
#     echo " -> ghb ... "
#     flatpak install -y fr.handbrake.ghb  > /dev/null 2>&1
# fi
# if ! command_exists io.github.giantpinkrobots.flatsweep; then
#     echo " -> flatsweep... "
#     flatpak install -y io.github.giantpinkrobots.flatsweep > /dev/null 2>&1
# fi
# if ! command_exists io.github.jeffshee.Hidamari; then
#     echo " -> hidamari... "
#     flatpak install -y io.github.jeffshee.Hidamari > /dev/null 2>&1
# fi
# if ! command_exists io.gitlab.adhami3310.Footage; then
#     echo " -> footage... "
#     flatpak install -y io.gitlab.adhami3310.Footage > /dev/null 2>&1
# fi
# if ! command_exists org.audacityteam.Audacity; then
#     echo " -> audacity... "
#     flatpak install -y org.audacityteam.Audacity > /dev/null 2>&1
# fi
# if ! command_exists org.gnome.Snapshot; then
#     echo " -> snapshot ... "
#     flatpak install -y org.gnome.Snapshot  > /dev/null 2>&1
# fi
# if ! command_exists org.gtk.Gtk3theme.Adwaita-dark; then
#     echo " -> adwaita dark... "
#     flatpak install -y org.gtk.Gtk3theme.Adwaita-dark > /dev/null 2>&1
# fi
# if ! command_exists org.gtk.Gtk3theme.adw-gtk3-dark; then
#     echo " -> adwaita gtk3 dark ... "
#     flatpak install -y org.gtk.Gtk3theme.adw-gtk3-dark  > /dev/null 2>&1
# fi
# if ! command_exists org.libreoffice.LibreOffice; then
#     echo " -> libre office... "
#     flatpak install -y org.libreoffice.LibreOffice > /dev/null 2>&1
# fi
# if ! command_exists org.nickvision.tubeconverter; then
#     echo " -> tubeconverter ... "
#     flatpak install -y org.nickvision.tubeconverter  > /dev/null 2>&1
# fi
# if ! command_exists org.pitivi.Pitivi; then
#     echo " -> pitivi... "
#     flatpak install -y org.pitivi.Pitivi > /dev/null 2>&1
# fi
# if ! command_exists sh.cider.Cider; then
#     echo " -> cider... "
#     flatpak install -y sh.cider.Cider > /dev/null 2>&1
# fi