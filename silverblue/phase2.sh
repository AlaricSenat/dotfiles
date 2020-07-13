# Install the missing packages from rpmfusion
rpm-ostree install ffmpeg &&

# Install some everyday-use flatpaks

flatpak install -y flathub com.spotify.Client org.videolan.VLC &&

echo Success ! Reboot and the fully layered silverblue install is done
