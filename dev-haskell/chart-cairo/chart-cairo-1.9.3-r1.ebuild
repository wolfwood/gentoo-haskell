# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.6.3

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

MY_PN="Chart-cairo"
MY_P="${MY_PN}-${PV}"

DESCRIPTION="Cairo backend for Charts"
HOMEPAGE="https://github.com/timbod7/haskell-chart/wiki"
SRC_URI="https://hackage.haskell.org/package/${MY_P}/${MY_P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64"
IUSE=""

RDEPEND=">=dev-haskell/cairo-0.9.11:=[profile?]
	>=dev-haskell/chart-1.9:=[profile?] <dev-haskell/chart-1.10:=[profile?]
	>=dev-haskell/colour-2.2.1:=[profile?] <dev-haskell/colour-2.4:=[profile?]
	<dev-haskell/data-default-class-0.2:=[profile?]
	>=dev-haskell/lens-3.9:=[profile?]
	dev-haskell/mtl:=[profile?]
	dev-haskell/old-locale:=[profile?]
	>=dev-haskell/operational-0.2.2:=[profile?] <dev-haskell/operational-0.3:=[profile?]
	>=dev-lang/ghc-7.4.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.6
"

S="${WORKDIR}/${MY_P}"

src_prepare() {
	default

	cabal_chdeps \
		'lens >= 3.9 && < 4.19' 'lens >= 3.9'
}
