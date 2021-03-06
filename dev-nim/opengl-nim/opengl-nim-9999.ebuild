# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit git-r3

DESCRIPTION="Nim bindings for OpenGL"
HOMEPAGE="https://github.com/nim-lang/opengl"
EGIT_REPO_URI="https://github.com/nim-lang/opengl"

LICENSE="MIT"
SLOT="0"
KEYWORDS=""
IUSE=""

DEPEND="
	>dev-lang/nim-0.10.3
	dev-nim/x11-nim
	virtual/opengl
"
RDEPEND=""

src_install() {
	dodir /usr/share/nim/lib/packages/opengl
	insinto /usr/share/nim/lib/packages/opengl
	doins -r src/*
}
