# Install the missing packages from rpmfusion
rpm-ostree install                                            \
    android-tools                                             \
    git                                                       \
    podman-compose containernetworking-plugins                \
    virt-manager                                              \
    intel-media-driver libva-intel-media-driver igt-gpu-tools \
    net-tools tcpdump wireshark                               \
    chromium &&

# Install some everyday-use flatpaks

flatpak install -y flathub                                    \
com.spotify.Client                                            \
org.videolan.VLC                                              \
org.gnome.Geary                                               \
org.mozilla.firefox &&

echo Success ! Reboot and the fully layered silverblue install is done
