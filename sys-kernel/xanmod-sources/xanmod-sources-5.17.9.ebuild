# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI="8"
ETYPE="sources"
MY_P=linux-${PV%.*}
XV="1"
inherit kernel-2
detect_version

DESCRIPTION="Full sources for the XanMod sources"
HOMEPAGE="https://xanmod.org"
SRC_URI="
		https://cdn.kernel.org/pub/linux/kernel/v$(ver_cut 1).x/${MY_P}.tar.xz
		https://github.com/xanmod/linux/releases/download/${PV}-xanmod${XV}/patch-${PV}-xanmod${XV}.xz
		"
IUSE=""

KEYWORDS="~amd64"
LICENSE="GPL-2"
SLOT="0"

#S="${WORKDIR}/${P}"

src_unpack() {
	UNIPATCH_LIST_DEFAULT="${DISTDIR}/patch-${PV}-xanmod${XV}.xz"
	UNIPATCH_LIST=""

	kernel-2_src_unpack

}

