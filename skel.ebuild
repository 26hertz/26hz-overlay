# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=

inherit git-r3

DESCRIPTION=""
HOMEPAGE=""
EGIT_REPO_URI=""

LICENSE=""
SLOT="0"
IUSE=""

RDEPEND=""
DEPEND=""

src_install() {
	insinto "/usr/share/zsh/site-contrib/${PN}"
	doins -r *
}
