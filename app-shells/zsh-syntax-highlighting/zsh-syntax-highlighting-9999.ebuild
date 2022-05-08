# Copyright 2011-2022 Martin V\"ath
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit git-r3
PROPERTIES="live"
DESCRIPTION="Fish shell like syntax highlighting for zsh"
HOMEPAGE="https://github.com/zsh-users/zsh-syntax-highlighting/"
EGIT_REPO_URI="https://github.com/zsh-users/${PN}.git"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~x86 ~amd64"
IUSE=""

DEPEND="app-shells/zsh"
RDEPEND="${DEPEND}"

src_prepare() {
	if [ -f "${FILESDIR}/Makefile-${PV}.patch" ]; then
		epatch "${FILESDIR}/Makefile-${PV}.patch"
	fi
	default
}

src_install() {
	insinto "/usr/share/zsh/site-contrib/${PN}"
	doins "${S}/${PN}.plugin.zsh"

	emake install DESTDIR="${D}" PREFIX="/usr/share/zsh/site-contrib/"
}
