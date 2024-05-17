# PortProton's PKGBUID 

PKGBUILD script for installing PortProton on arch-based distros.

## Manual installation method

```sh
git clone https://aur.archlinux.org/portproton.git
cd portproton
makepkg -sci
```

If you use GNOME, you will also need icoextract to display icons.

```sh
git clone https://aur.archlinux.org/icoextract.git
cd icoextract
makepkg -sci
```

## YAY

```sh
yay -S portproton
```

If you use Manjaro or Manjaro based distros, you will also need base-devel for build packages.

```sh
sudo pacman -S base-devel
```
