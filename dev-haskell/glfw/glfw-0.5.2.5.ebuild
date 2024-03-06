# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.4.7.9999
#hackport: flags: dynamic:system-glfw

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

MY_PN="GLFW"
MY_P="${MY_PN}-${PV}"

DESCRIPTION="A Haskell binding for GLFW"
HOMEPAGE="http://haskell.org/haskellwiki/GLFW"
SRC_URI="https://hackage.haskell.org/package/${MY_P}/${MY_P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64"
IUSE="system-glfw"

RDEPEND=">=dev-haskell/opengl-2.1:=[profile?] <dev-haskell/opengl-4:=[profile?]
	>=dev-lang/ghc-7.4.1:=
	system-glfw? ( media-libs/glfw )
	!system-glfw? ( virtual/opengl
			x11-libs/libX11 )
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.12
"

S="${WORKDIR}/${MY_P}"

PATCHES=("${FILESDIR}"/${P}-ghc-8.6.patch)

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag system-glfw dynamic)
}
