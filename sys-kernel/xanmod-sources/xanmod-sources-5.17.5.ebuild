# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI="8"
ETYPE="sources"
inherit kernel-2

XV="1"
DESCRIPTION="Full sources for the XanMod sources"
HOMEPAGE="https://xanmod.org"
SRC_URI="https://github.com/xanmod/linux/archive/${PV}-xanmod${XV}.tar.gz"

KEYWORDS="~amd64"
SLOT="0"

src_unpack() {

	unpack ${PV}-xanmod${XV}.tar.gz

}

S="${WORKDIR}/linux-${PV}-xanmod${XV}"

src_install() {

	dodir /usr/src/
	cp -R "${S}/" "${D}/usr/src/" || die "Install failed!"

}

pkg_postinst() {

	ewarn "USE for symlink does not work"
	ewarn "You should use (eselect kernel set X) to use the kernel sources!!!"

}
