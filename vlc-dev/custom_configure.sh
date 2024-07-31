#!/bin/bash

OPTIONS="--disable-mpc --disable-libplacebo --with-contrib=/var/home/asenat/Workspaces/vlan/vlc/contrib/x86_64-redhat-linux --enable-debug --disable-medialibrary --disable-lua --disable-qt --disable-live555"
#VLC_CONFIGURE_OPTIONS="
    #--disable-debug --enable-shared --disable-dvbpsi --disable-dav1d  --disable-vpx --disable-merge-ffmpeg --disable-avcodec --disable-avformat --disable-opus --disable-faad --disable-gles2 --disable-xcb  --enable-sout --disable-lua --disable-vlm --disable-archive --disable-live555 --disable-dc1394 --disable-dv1394 --disable-linsys --disable-dvdread --disable-dvdnav --disable-bluray --disable-opencv --disable-smbclient --disable-dsm --disable-sftp --disable-nfs --disable-smb2 --disable-v4l2 --disable-nvdec --disable-decklink --disable-vcd --disable-libcddb --disable-screen --disable-vnc --disable-freerdp --disable-asdcp  --disable-gme --disable-sid --disable-ogg --disable-shout --disable-matroska --disable-mod --disable-mpc --disable-shine --disable-omxil --disable-rpi-omxil --disable-mad --disable-mpg123 --disable-gst-decode --disable-libva --disable-dxva2 --disable-d3d11va --disable-swscale --disable-postproc --disable-aom --disable-twolame --disable-fdkaac --disable-a52 --disable-dca --disable-flac --disable-libmpeg2 --disable-vorbis --disable-tremor --disable-speex --disable-spatialaudio --disable-theora --disable-oggspots --disable-daala --disable-schroedinger --disable-png --disable-jpeg --disable-bpg --disable-x262 --disable-x265 --disable-x264 --disable-x26410b --disable-mfx --disable-fluidsynth --disable-fluidlite --disable-zvbi --disable-telx --disable-aribsub --disable-aribb25 --disable-kate --disable-tiger --disable-css --disable-libplacebo --disable-vulkan --disable-vdpau --disable-wayland --disable-sdl-image --disable-freetype --disable-fribidi --disable-harfbuzz --disable-fontconfig --disable-libass --disable-svg --disable-svgdec --disable-directx--disable-kms --disable-caca --disable-kva --disable-mmal --disable-alsa --disable-oss --disable-sndio --disable-wasapi --disable-jack --disable-opensles --disable-samplerate --disable-soxr --disable-kai --disable-chromaprint --disable-chromecast --disable-qt --disable-qt-qml-cache --disable-qt-qml-debug --disable-skins2 --disable-libtar --disable-sparkle --disable-ncurses --disable-lirc --disable-srt --disable-goom --disable-projectm --disable-vsxu --disable-avahi --disable-udev --disable-mtp --enable-upnp --disable-microdns --disable-libxml2 --disable-libgcrypt --disable-gnutls --disable-taglib --disable-secret --disable-kwallet --disable-update-check --disable-notify --disable-medialibrary --disable-vlc --disable-addonmanagermodules --disable-ssp
#"

CONFIGURE="../configure"
export CXX="ccache g++"
export CXXFLAGS="-O0 -g3 -fno-omit-frame-pointer -DDEBUG"
export CC="ccache gcc"
export CFLAGS="-O0 -g3 -fno-omit-frame-pointer -DDEBUG"
export PATH="/var/home/asenat/Workspaces/vlan/vlc/extras/tools/build/bin/:${PATH}"

case $1 in
asan) 
    shift
    $CONFIGURE LDFLAGS="-fsanitize=address -lasan" ASAN_OPTIONS="halt_on_error=false" --with-sanitizer=address $OPTIONS
;;
absan) 
    shift
    $CONFIGURE LDFLAGS="-fsanitize=address,undefined -lubsan -lasan" ASAN_OPTIONS="halt_on_error=false" --with-sanitizer="address,undefined" $OPTIONS
;;
ubsan)
    shift
    $CONFIGURE CFLAGS="-fsanitize=undefined" LDFLAGS="-lasan -lubsan -fsanitize=undefined" --with-sanitizer=address $OPTIONS
;;
tsan)
    shift
    export TSAN_OPTIONS="exitcode=0"
    CXXFLAGS+=" -fsanitize=thread -fno-omit-frame-pointer"
    CFLAGS+="-fsanitize=thread -fno-omit-frame-pointer"
    $CONFIGURE LDFLAGS="-ltsan" --disable-optimizations --with-sanitizer=thread $OPTIONS
;;
# BISECTION
bisect)
    shift
    $CONFIGURE $OPTIONS --disable-aom --disable-media-library --disable-libplacebo --disable-vpx --disable-qt  --disable-srt
;;
*)
    $CONFIGURE $OPTIONS $@
;;

esac
