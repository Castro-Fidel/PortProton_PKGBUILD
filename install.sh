#!/usr/bin/env bash

SYS_ID="$(cat /sys/devices/virtual/dmi/id/product_name)"

if passwd -S $USER | grep -q "NP" ; then
	echo "The user password is not specified, for the script to work it is necessary to specify the user password via passwd"
	exit 1
fi

if grep -iq "ChimeraOS" /etc/os-release ; then
    echo "This script is not supported ChimeraOS"
    exit 1
fi

echo 'Please provide your sudo password'

wait_and_exit() {
    WAIT_TIME="$1"
    EXIT_CODE="$2"

    read -n 1 -s -r -t "$WAIT_TIME" -p "Press any key to exit..."
    exit "$EXIT_CODE"
}

install_deck() {
    sudo steamos-readonly disable
    sudo cp /etc/pacman.conf /etc/pacman.conf.backup
    sudo sed -i '/^\[.*\]$/a SigLevel = Optional TrustAll' /etc/pacman.conf
    sudo pacman -Sy --needed --noconfirm --disable-download-timeout base-devel git
    if [[ ! -e "PKGBUILD_STEAMDECK" ]]; then
        curl -O -L https://raw.githubusercontent.com/Castro-Fidel/PortProton_PKGBUILD/main/PKGBUILD_STEAMDECK
    fi
    makepkg -sirc -p PKGBUILD_STEAMDECK
    sudo mv /etc/pacman.conf.backup /etc/pacman.conf
    sudo pacman -Sy
    sudo steamos-readonly enable

    return "$?"
}

install_generic_pc() {
    sudo pacman -S --needed --noconfirm --disable-download-timeout base-devel git
    if command -v gnome-shell &>/dev/null; then
        git clone https://aur.archlinux.org/icoextract.git
        cd icoextract || exit 1
        makepkg -sirc --noconfirm
        cd ..
    fi
    if [[ ! -e "PKGBUILD" ]]; then
        curl -O -L https://raw.githubusercontent.com/Castro-Fidel/PortProton_PKGBUILD/main/PKGBUILD
    fi
    makepkg -sirc

    return "$?"
}

# Initialize error variables
DECK_INSTALL_ERROR=0
GENERIC_PC_INSTALL_ERROR=0

# STEAMDECK and STEAMDECK OLED
if [[ ":Jupiter:Galileo:" =~ :"$SYS_ID": ]]; then
    install_deck
    DECK_INSTALL_ERROR="$?"
else
    install_generic_pc
    GENERIC_PC_INSTALL_ERROR="$?"
fi

if [ "$DECK_INSTALL_ERROR" -ne 0 ]; then
    echo "ERROR: Install PortProton on deck failed"
    echo ""
    wait_and_exit 20 "$DECK_INSTALL_ERROR"
elif [ "$GENERIC_PC_INSTALL_ERROR" -ne 0 ]; then
    echo "ERROR: Install PortProton failed"
    echo ""
    wait_and_exit 20 "$GENERIC_PC_INSTALL_ERROR"
else
    echo "PortProton successfully installed"
    echo ""
    wait_and_exit 10 0
fi
