# Enable rpmfusion repositories
sudo rpm-ostree install https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm

# Enable Alacritty's repository

sudo wget https://copr.fedorainfracloud.org/coprs/pschyska/alacritty/repo/fedora-32/pschyska-alacritty-fedora-32.repo -O /etc/yum.repos.d/pschyska-alacritty-fedora-32.repo

# Enable flathub
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

# Upgrade and install the base layer
rpm-ostree refresh-md &&
rpm-ostree upgrade &&
rpm-ostree install zsh vim alacritty gnome-tweak-tool materia-gtk-theme &&
echo Success ! You can now reboot and start install phase 2
