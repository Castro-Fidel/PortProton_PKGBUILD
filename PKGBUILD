# Maintainer: Fidel tergoevm@gmail.com
pkgname=portproton
pkgver=97
pkgrel=6
pkgdesc="Software for playing Microsoft Windows games and launchers"
arch=('x86_64')
url="https://portwine-linux.ru/port-proton-linux/"
license=('MIT')
depends=('bash' 'icoutils' 'yad' 'wget' 'bubblewrap' 'zstd' 'cabextract'
         'bc' 'tar' 'openssl' 'desktop-file-utils' 'curl' 'dbus' 'freetype2'
         'gdk-pixbuf2' 'ttf-font' 'zenity' 'lsb-release' 'nss' 'xorg-xrandr'
         'vulkan-driver' 'vulkan-icd-loader' 'lsof' 'lib32-libgl' 'lib32-gcc-libs' 'vulkan-tools'
         'lib32-libx11' 'lib32-libxss' 'lib32-alsa-plugins' 'lib32-libgpg-error' 'lib32-freetype2'
         'lib32-nss' 'lib32-vulkan-driver' 'lib32-vulkan-icd-loader' 'lib32-openssl')
optdepends=('gamemode: Support for Feral GameMode'
            'lib32-gamemode: 32-bit support for Feral GameMode')
_commit=1c80e991469de273025a99240129050855a19b9e
source=("https://raw.githubusercontent.com/Castro-Fidel/PortWINE/$_commit/portwine_install_script/PortProton-$pkgver"
        "$pkgname.desktop"
        "$pkgname.png"
        'LICENSE')
sha256sums=('1980f23e37e42f6f1f105874892175ac6fb01fcb93321568171a226ce6ef6d86'
            '7abdcc92de357592043b9db45e1c5913ee4c49a340e6e4d49bb2099893aae24c'
            'b27e5a701555b3cccdba0d902c80888d6b0e6a9ed2fb4ced8dfd915207683975'
            '70c0832c10f5fb81335d0b2ce0d29779db98e15801c295d247e3369eddc85328')

package() {
  install -Dm755 "PortProton-$pkgver" "$pkgdir/usr/bin/$pkgname"
  install -Dm644 "$pkgname.desktop" -t "$pkgdir/usr/share/applications/"
  install -Dm644 "$pkgname.png" -t "$pkgdir/usr/share/pixmaps"
  install -Dm644 LICENSE -t "$pkgdir/usr/share/licenses/$pkgname/"
}
