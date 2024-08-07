#!/bin/bash

sudo dnf builddep -y vlc vlc-devel
sudo dnf install -y libasan libtsan libubsan qt5-qtquickcontrols2-devel libatomic lame-devel valgrind-devel

WORKSPACE="/var/home/asenat/Workspaces/vlan"
VLC="${WORKSPACE}/vlc"
BUILD="${VLC}/build"

mkdir -p "${WORKSPACE}"
git clone "git@code.videolan.org:videolan/vlc.git" "${VLC}"
mkdir -p "${BUILD}"
cp "./custom_configure.sh" ${BUILD}
cp "./.clang-format" ${VLC}

cp -r "${VLC}" "${WORKSPACE}/vlc2"
