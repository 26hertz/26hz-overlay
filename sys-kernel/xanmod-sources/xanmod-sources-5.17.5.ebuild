# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI="8"
ETYPE="sources"
inherit kernel-2-src-prepare-overlay
detect_version

DESCRIPTION="Full XanMod sources with cacule option and including the Gentoo patchset "
HOMEPAGE="https://xanmod.org"
LICENSE+=" CDDL"
KEYWORDS="~amd64"
SLOT="0"
XANMOD_VERSION="1"
XANMOD_URI="https://github.com/xanmod/linux/releases/download/"
SRC_URI="
	${KERNEL_BASE_URI}/linux-${KV_MAJOR}.${KV_MINOR}.tar.xz
	${XANMOD_URI}/${OKV}-xanmod${XANMOD_VERSION}/patch-${OKV}-xanmod${XANMOD_VERSION}.xz
"

src_unpack() {
UNIPATCH_LIST_DEFAULT=""
		UNIPATCH_LIST="${DISTDIR}/patch-${OKV}-xanmod${XANMOD_VERSION}.xz "
	kernel-2-src-prepare-overlay_src_unpack
}

src_prepare() {

	kernel-2-src-prepare-overlay_src_prepare

}

pkg_postinst() {
	elog "MICROCODES"
	elog "Use xanmod-sources with microcodes"
	elog "Read https://wiki.gentoo.org/wiki/Intel_microcode"
}
