# Maintainer: LINUX-GAMING.RU (tergoevm@gmail.com)

pkgname=portproton
pkgver=1.3
pkgrel=1
pkgdesc="Software for playing Microsoft Windows games and launchers"
arch=('x86_64')
url="https://linux-gaming.ru"
license=('MIT')
depends=('procps-ng' 'bash' 'icoutils' 'yad' 'wget' 'bubblewrap' 'zstd' 'cabextract' 'gzip'
         'bc' 'tar' 'openssl' 'desktop-file-utils' 'curl' 'dbus' 'freetype2' 'xdg-utils'
         'gdk-pixbuf2' 'ttf-font' 'zenity' 'nss' 'xorg-xrandr' 'lsof' 'mesa-utils'
         'vulkan-driver' 'vulkan-icd-loader' 'lib32-libgl' 'lib32-gcc-libs' 'vulkan-tools'
         'lib32-libx11' 'lib32-libxss' 'lib32-alsa-plugins' 'lib32-libgpg-error' 'lib32-freetype2'
         'lib32-nss' 'lib32-vulkan-driver' 'lib32-vulkan-icd-loader' 'lib32-openssl' 'lib32-mesa-utils')
optdepends=('gamemode: Support for Feral GameMode'
            'lib32-gamemode: 32-bit support for Feral GameMode')

source=("${pkgname}-${pkgver}.tar.gz::https://github.com/Castro-Fidel/PortProton_ALT/archive/v${pkgver}.tar.gz"
        "https://raw.githubusercontent.com/Castro-Fidel/PortProton_PKGBUILD/main/$pkgname.metainfo.xml")
sha256sums=('757790dea56248ae28d8d070e0413f75fe80422a053a52db0740f705770bf6fd'
            '12cf6820ac4145580df1c48e419dff3f4f7545790e45efc0332623b5e70633fe')

package() {
  install -Dm755 "$srcdir/PortProton_ALT-$pkgver/portproton" "$pkgdir/usr/bin/$pkgname"
  install -Dm644 "$srcdir/PortProton_ALT-$pkgver/$pkgname.desktop" -t "$pkgdir/usr/share/applications/"
  install -Dm644 "$srcdir/PortProton_ALT-$pkgver/$pkgname.svg" -t "$pkgdir/usr/share/icons/hicolor/scalable/apps/"
  install -Dm644 "$pkgname.metainfo.xml" -t "$pkgdir/usr/share/metainfo/"
  install -Dm644 "$srcdir/PortProton_ALT-$pkgver/LICENSE" -t "$pkgdir/usr/share/licenses/$pkgname/"
}
