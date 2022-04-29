# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI="8"
ETYPE="sources"
XV="1"
inherit kernel-2

DESCRIPTION="Full sources for the XanMod sources"
HOMEPAGE="https://xanmod.org"
SRC_URI="https://github.com/xanmod/linux/archive/${PV}-xanmod${XV}.tar.gz -> ${P}.tar.gz"
IUSE=""
REQUIRED_USE="!symlink !build"

KEYWORDS="~amd64"
LICENSE="GPL-2"
SLOT="0"

S="${WORKDIR}/linux-${PV}-xanmod${XV}"

src_unpack() {

	unpack "${A}"

}

src_prepare() {

	eapply_user

}

src_install() {

	dodir /usr/src
	cp -R "${S}/" "${D}/usr/src/"

}
