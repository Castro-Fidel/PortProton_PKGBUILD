#!/usr/bin/env bash

SYS_ID="$(cat /sys/devices/virtual/dmi/id/product_name)"

if passwd -S $USER | grep -q "NP" ; then
	echo "The user password is not specified, for the script to work it is necessary to specify the user password via passwd"
	exit
fi

if grep -iq "ChimeraOS" /etc/os-release ; then
    echo "This script is not supported ChimeraOS"
    exit
fi

echo 'Please provide your sudo password'

# STEAMDECK and STEAMDECK OLED
if [[ ":Jupiter:Galileo:" =~ :"$SYS_ID": ]]; then
    if [[ ! -e "PKGBUILD_STEAMDECK" ]]
    then curl -O -L https://raw.githubusercontent.com/Castro-Fidel/PortProton_PKGBUILD/main/PKGBUILD_STEAMDECK
    fi
    sudo steamos-readonly disable
    sudo pacman-key --init
    sudo pacman-key --update
    sudo pacman-key --populate
    sudo pacman -S --needed --noconfirm --disable-download-timeout base-devel git
    makepkg -sirc -p PKGBUILD_STEAMDECK
    sudo steamos-readonly enable
else
    if [[ ! -e "PKGBUILD" ]]
    then curl -O -L https://raw.githubusercontent.com/Castro-Fidel/PortProton_PKGBUILD/main/PKGBUILD
    fi
    sudo pacman -S --needed --noconfirm --disable-download-timeout base-devel git
    if command -v gnome-shell ; then
        git clone https://aur.archlinux.org/icoextract.git
        cd icoextract
        makepkg -sirc --noconfirm
        cd ..
    fi
    makepkg -sirc
fi
