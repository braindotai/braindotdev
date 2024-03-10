command_exists() {
    command -v "$1" 
}

if ! command_exists flathub; then
    echo "🛒 Installing flathub 🛒"
    paru -Sy --noconfirm flatpak > /dev/null 2>&1
fi

if ! command_exists com.github.finefindus.eyedropper; then
    flatpak install -y com.github.finefindus.eyedropper
fi
if ! command_exists com.github.huluti.Curtail; then
    flatpak install -y com.github.huluti.Curtail
fi
if ! command_exists com.github.jeromerobert.pdfarranger; then
    flatpak install -y com.github.jeromerobert.pdfarranger
fi
if ! command_exists com.github.tchx84.Flatseal ; then
    flatpak install -y com.github.tchx84.Flatseal 
fi
if ! command_exists com.mattjakeman.ExtensionManager; then
    flatpak install -y com.mattjakeman.ExtensionManager
fi
if ! command_exists fr.handbrake.ghb ; then
    flatpak install -y fr.handbrake.ghb 
fi
if ! command_exists io.github.giantpinkrobots.flatsweep; then
    flatpak install -y io.github.giantpinkrobots.flatsweep
fi
if ! command_exists io.github.jeffshee.Hidamari; then
    flatpak install -y io.github.jeffshee.Hidamari
fi
if ! command_exists io.gitlab.adhami3310.Footage; then
    flatpak install -y io.gitlab.adhami3310.Footage
fi
if ! command_exists org.audacityteam.Audacity; then
    flatpak install -y org.audacityteam.Audacity
fi
if ! command_exists org.blender.Blender; then
    flatpak install -y org.blender.Blender
fi
if ! command_exists org.gnome.Snapshot ; then
    flatpak install -y org.gnome.Snapshot 
fi
if ! command_exists org.gtk.Gtk3theme.Adwaita-dark; then
    flatpak install -y org.gtk.Gtk3theme.Adwaita-dark
fi
if ! command_exists org.gtk.Gtk3theme.adw-gtk3-dark ; then
    flatpak install -y org.gtk.Gtk3theme.adw-gtk3-dark 
fi
if ! command_exists org.libreoffice.LibreOffice; then
    flatpak install -y org.libreoffice.LibreOffice
fi
if ! command_exists org.nickvision.tubeconverter ; then
    flatpak install -y org.nickvision.tubeconverter 
fi
if ! command_exists org.pitivi.Pitivi; then
    flatpak install -y org.pitivi.Pitivi
fi
if ! command_exists sh.cider.Cider; then
    flatpak install -y sh.cider.Cider
fi