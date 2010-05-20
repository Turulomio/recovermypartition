# Copyright 1999-2003 Gentoo Technologies, Inc.
# Distributed under the terms of the GNU General Public License v2
# $Header: $

inherit subversion autotools eutils

IUSE=""
SRC_URI="https://xulpymoney.svn.sourceforge.net/svnroot/xulpymoney/recoverpartition"
DESCRIPTION="Makes forensics from a partition"
HOMEPAGE="http://recovermypartition.sourceforge.net"
LICENSE="GPL-3"

SLOT="0"
KEYWORDS="x86"

DEPEND="
app-forensics/sleuthkit
app-forensics/foremost
"

RDEPEND="${DEPEND}"

src_compile(){
	elog "Nothing to compile"
}

src_install(){
	mv recoverpartition.py recoverpartition
	dobin recoverpartition
}
