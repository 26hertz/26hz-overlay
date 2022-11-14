# Copyright 2011-2022 Martin V\"ath
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit git-r3
DESCRIPTION="Jaus_Hwang's personal tools"
HOMEPAGE="https://github.com/26hertz/26hz-utils"
EGIT_REPO_URI="https://github.com/26hertz/${PN}.git"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64"
IUSE="archtools screenshot"

DEPEND="
	x11-apps/xset
	x11-apps/xsetroot
    x11-misc/xclip
	net-libs/nodejs
	screenshot? (
				media-gfx/maim
				media-gfx/flameshot
				gui-apps/grim
				gui-apps/slurp
				media-gfx/imagemagick
				)
"
RDEPEND="${DEPEND}"

src_install() {
	exeinto /usr/local/bin
	doexe ./bin/{hz-adduse,hz-genxanmod}

	use archtools && doexe ./bin/{hz-chroot,hz-genfstab}
	use screenshot && doexe ./bin/{hz-maims,hz-flames,hz-grims}

}
