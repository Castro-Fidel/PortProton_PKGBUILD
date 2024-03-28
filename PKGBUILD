# Maintainer: LINUX-GAMING.RU (tergoevm@gmail.com)

pkgname=portproton
pkgver=1.5
pkgrel=3
pkgdesc="Software for playing Microsoft Windows games and launchers"
arch=('x86_64')
url="https://linux-gaming.ru"
license=('MIT')

depends=('bash' 'icoutils' 'yad' 'bubblewrap' 'zstd' 'cabextract' 'gzip'
         'tar' 'openssl' 'openssl-1.1' 'desktop-file-utils' 'curl' 'dbus' 'freetype2' 'xdg-utils'
         'gdk-pixbuf2' 'ttf-font' 'nss' 'xorg-xrandr' 'lsof' 'mesa-utils' 'imagemagick'
         'vulkan-driver' 'vulkan-icd-loader' 'lib32-libgl' 'lib32-gcc-libs' 'vulkan-tools'
         'lib32-libx11' 'lib32-libxss' 'lib32-alsa-plugins' 'lib32-pipewire' 'lib32-libgpg-error' 'lib32-gnutls' 'lib32-freetype2'
         'lib32-nss' 'lib32-vulkan-driver' 'lib32-vulkan-icd-loader' 'lib32-openssl' 'lib32-openssl-1.1' 'lib32-mesa-utils' 'python-pillow')
optdepends=('gamemode: Support for Feral GameMode'
            'lib32-gamemode: 32-bit support for Feral GameMode'
            'gamescope: Support for Gamescope'
            'icoextract: For proper icon creation in GNOME')

source=("$pkgname.tar.gz::https://github.com/Castro-Fidel/PortProton_ALT/archive/v$pkgver.tar.gz")
sha256sums=('0fde67c49f87805f03b3c39204ac8f48a6c6c584bec2a31086c90c953c3723f6')

package() {
  cd PortProton_ALT-$pkgver
  install -Dm755 "portproton" "$pkgdir/usr/bin/$pkgname"
  install -Dm644 "$pkgname.desktop" "$pkgdir/usr/share/applications/$pkgname.desktop"
  install -Dm644 "$pkgname.svg" "$pkgdir/usr/share/icons/hicolor/scalable/apps/$pkgname.svg"
  install -Dm644 "LICENSE" "$pkgdir/usr/share/licenses/$pkgname/LICENSE"
}
