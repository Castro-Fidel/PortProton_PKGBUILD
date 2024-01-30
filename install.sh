#!/usr/bin/env bash

SYS_ID="$(cat /sys/devices/virtual/dmi/id/product_name)"

if [[ ! -e "PKGBUILD" ]]
then curl https://raw.githubusercontent.com/Castro-Fidel/PortProton_PKGBUILD/main/PKGBUILD
fi

if [[ ! -e "PKGBUILD_STEAMDECK" ]]
then curl https://raw.githubusercontent.com/Castro-Fidel/PortProton_PKGBUILD/main/PKGBUILD_STEAMDECK
fi

echo 'Please provide your sudo password'

# STEAMDECK and STEAMDECK OLED
if [[ ":Jupiter:Galileo:" =~ :"$SYS_ID": ]]; then
    sudo steamos-readonly disable
    sudo pacman-key --init
    sudo pacman-key --update
    sudo pacman-key --populate
    sudo pacman -S --needed --noconfirm --disable-download-timeout base-devel git
    makepkg -sirc -p PKGBUILD_STEAMDECK --noconfirm
    sudo steamos-readonly enable
else
    sudo pacman -S --needed --noconfirm --disable-download-timeout base-devel git
    if command -v gnome-shell ; then
        git clone https://aur.archlinux.org/icoextract.git
        cd icoextract
        makepkg -sirc --noconfirm
        cd ..
    fi
    makepkg -sirc --noconfirm
fi
