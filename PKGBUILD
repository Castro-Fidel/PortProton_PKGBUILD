# Maintainer: LINUX-GAMING.RU (tergoevm@gmail.com)

pkgname=portproton
pkgver=1.3
pkgrel=2
pkgdesc="Software for playing Microsoft Windows games and launchers"
arch=('x86_64')
url="https://linux-gaming.ru"
license=('MIT')
depends=('procps-ng' 'bash' 'icoutils' 'yad' 'wget' 'bubblewrap' 'zstd' 'cabextract' 'gzip'
         'bc' 'tar' 'openssl' 'desktop-file-utils' 'curl' 'dbus' 'freetype2' 'xdg-utils'
         'gdk-pixbuf2' 'ttf-font' 'zenity' 'nss' 'xorg-xrandr' 'lsof' 'mesa-utils'
         'vulkan-driver' 'vulkan-icd-loader' 'lib32-libgl' 'lib32-gcc-libs' 'vulkan-tools'
         'lib32-libx11' 'lib32-libxss' 'lib32-alsa-plugins' 'lib32-libgpg-error' 'lib32-freetype2'
         'lib32-nss' 'lib32-vulkan-driver' 'lib32-vulkan-icd-loader' 'lib32-openssl' 'lib32-mesa-utils' 'icoextract' 'python-pillow')
optdepends=('gamemode: Support for Feral GameMode'
            'lib32-gamemode: 32-bit support for Feral GameMode'
            'gamescope: Support for Gamescope')

source=("$pkgname.tar.gz::https://github.com/Castro-Fidel/PortProton_ALT/archive/v$pkgver.tar.gz")
sha256sums=('757790dea56248ae28d8d070e0413f75fe80422a053a52db0740f705770bf6fd')

package() {
  cd PortProton_ALT-1.3
  install -Dm755 "portproton" "$pkgdir/usr/bin/$pkgname"
  install -Dm644 "$pkgname.desktop" "$pkgdir/usr/share/applications/$pkgname.desktop"
  install -Dm644 "$pkgname.svg" "$pkgdir/usr/share/icons/hicolor/scalable/apps/$pkgname.svg"
  install -Dm644 "LICENSE" "$pkgdir/usr/share/licenses/$pkgname/LICENSE"
}
