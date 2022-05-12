# Copyright 2011-2022 Martin V\"ath
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit git-r3
DESCRIPTION="Jaus_Hwang's personal tools"
HOMEPAGE="https://github.com/26hz/26hz-utils"
EGIT_REPO_URI="https://github.com/26hz/${PN}.git"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64"
IUSE="archtools screenshot"

DEPEND="
    x11-misc/xclip
	net-libs/nodejs
	screenshot? (
				media-gfx/maim
				media-gfx/flameshot
				media-gfx/imagemagick
				)
"
RDEPEND="${DEPEND}"

src_install() {
	exeinto /usr/local/bin
	doexe ./bin/{adduse,kernelupdate}

	use archtools && doexe ./bin/{arch-chroot,genfstab}
	use screenshot && doexe ./bin/{maims,flames}

}
