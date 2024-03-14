command_exists() {
    command -v "$1" 
}
echo -e "🛒 Configuring flathub 🛒"

if ! command_exists flathub; then
    paru -Sy --noconfirm flatpak > /dev/null 2>&1
fi

if ! command_exists com.github.finefindus.eyedropper; then
    flatpak install -y com.github.finefindus.eyedropper > /dev/null 2>&1
fi
if ! command_exists com.github.huluti.Curtail; then
    flatpak install -y com.github.huluti.Curtail > /dev/null 2>&1
fi
if ! command_exists com.github.jeromerobert.pdfarranger; then
    flatpak install -y com.github.jeromerobert.pdfarranger > /dev/null 2>&1
fi
if ! command_exists com.github.tchx84.Flatseal; then
    flatpak install -y com.github.tchx84.Flatseal  > /dev/null 2>&1
fi
if ! command_exists com.mattjakeman.ExtensionManager; then
    flatpak install -y com.mattjakeman.ExtensionManager > /dev/null 2>&1
fi
if ! command_exists fr.handbrake.ghb; then
    flatpak install -y fr.handbrake.ghb  > /dev/null 2>&1
fi
if ! command_exists io.github.giantpinkrobots.flatsweep; then
    flatpak install -y io.github.giantpinkrobots.flatsweep > /dev/null 2>&1
fi
if ! command_exists io.github.jeffshee.Hidamari; then
    flatpak install -y io.github.jeffshee.Hidamari > /dev/null 2>&1
fi
if ! command_exists io.gitlab.adhami3310.Footage; then
    flatpak install -y io.gitlab.adhami3310.Footage > /dev/null 2>&1
fi
if ! command_exists org.audacityteam.Audacity; then
    flatpak install -y org.audacityteam.Audacity > /dev/null 2>&1
fi
if ! command_exists org.gnome.Snapshot; then
    flatpak install -y org.gnome.Snapshot  > /dev/null 2>&1
fi
if ! command_exists org.gtk.Gtk3theme.Adwaita-dark; then
    flatpak install -y org.gtk.Gtk3theme.Adwaita-dark > /dev/null 2>&1
fi
if ! command_exists org.gtk.Gtk3theme.adw-gtk3-dark; then
    flatpak install -y org.gtk.Gtk3theme.adw-gtk3-dark  > /dev/null 2>&1
fi
if ! command_exists org.libreoffice.LibreOffice; then
    flatpak install -y org.libreoffice.LibreOffice > /dev/null 2>&1
fi
if ! command_exists org.nickvision.tubeconverter; then
    flatpak install -y org.nickvision.tubeconverter  > /dev/null 2>&1
fi
if ! command_exists org.pitivi.Pitivi;
    flatpak install -y org.pitivi.Pitivi > /dev/null 2>&1
fi
if ! command_exists sh.cider.Cider; then
    flatpak install -y sh.cider.Cider > /dev/null 2>&1
fi
# if ! command_exists io.missioncenter.MissionCenter; then
#     flatpak run io.missioncenter.MissionCenter
# fi