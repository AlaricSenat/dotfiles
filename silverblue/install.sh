FVERSION=$(rpm -E %fedora)
# Enable rpmfusion repositories
sudo rpm-ostree install https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$FVERSION.noarch.rpm https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$FVERSION.noarch.rpm

# Enable flathub
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

# Change flatpak languages defaults
flatpak config --set languages "en;fr"

# Upgrade and install the base layer
rpm-ostree refresh-md &&
rpm-ostree upgrade &&
rpm-ostree install vim gnome-tweak-tool evolution &&
rpm-ostree override remove firefox firefox-langpacks &&
echo Success ! You can now reboot and start install phase 2
