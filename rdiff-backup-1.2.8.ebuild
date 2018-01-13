# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

PYTHON_COMPAT=( python2_7 )

inherit distutils-r1 versionator

DESCRIPTION="rdiff-backup reverse differential backup system"
HOMEPAGE="http://www.nongnu.org/rdiff-backup/"
SRC_URI="http://savannah.nongnu.org/download/rdiff-backup/${PF}.tar.gz -> ${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND="
	net-libs/librsync:0/1
"
RDEPEND="
	dev-python/pyxattr[${PYTHON_USEDEP}]
	dev-python/pylibacl[${PYTHON_USEDEP}]
"

python_install_all() {
        distutils-r1_python_install_all
}

