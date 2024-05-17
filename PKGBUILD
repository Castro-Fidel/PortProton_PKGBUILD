# Maintainer: LINUX-GAMING.RU (tergoevm@gmail.com)

pkgname=portproton
_xdg_name=ru.linux_gaming.PortProton
pkgver=1.6
pkgrel=1
pkgdesc="Software for playing Microsoft Windows games and launchers"
arch=('x86_64')
url="https://linux-gaming.ru"
license=('MIT')

depends=('bash' 'icoutils' 'yad' 'bubblewrap' 'zstd' 'cabextract' 'gzip'
         'tar' 'openssl' 'openssl-1.1' 'desktop-file-utils' 'curl' 'dbus' 'freetype2' 'xdg-utils'
         'gdk-pixbuf2' 'ttf-font' 'nss' 'xorg-xrandr' 'lsof' 'mesa-utils' 'imagemagick'
         'vulkan-driver' 'vulkan-icd-loader' 'lib32-libgl' 'lib32-gcc-libs' 'vulkan-tools'
         'lib32-libx11' 'lib32-libxss' 'lib32-alsa-plugins' 'lib32-pipewire' 'lib32-libgpg-error' 'lib32-gnutls' 'lib32-freetype2'
         'lib32-nss' 'lib32-vulkan-driver' 'lib32-vulkan-icd-loader' 'lib32-openssl' 'lib32-openssl-1.1' 'lib32-mesa-utils' 'python-pillow'
         'perl-image-exiftool')
optdepends=('gamemode: Support for Feral GameMode'
            'lib32-gamemode: 32-bit support for Feral GameMode'
            'gamescope: Support for Gamescope'
            'icoextract: For proper icon creation in GNOME')

source=("$pkgname.tar.gz::https://github.com/Castro-Fidel/PortProton_ALT/archive/v$pkgver.tar.gz")
sha256sums=('45ed66f1d05b74a320155d08c3bec6236a907e25e2ab08b90d99737210c16d8b')

package() {
  cd PortProton_ALT-$pkgver
  install -Dm755 "portproton" "$pkgdir/usr/bin/$pkgname"
  install -Dm644 "$_xdg_name.desktop" "$pkgdir/usr/share/applications/$_xdg_name.desktop"
  install -Dm644 "$_xdg_name.svg" "$pkgdir/usr/share/icons/hicolor/scalable/apps/$_xdg_name.svg"
  install -Dm644 "$_xdg_name.metainfo.xml" "$pkgdir/usr/share/metainfo/$_xdg_name.metainfo.xml"
  install -Dm644 "LICENSE" "$pkgdir/usr/share/licenses/$pkgname/LICENSE"
}
