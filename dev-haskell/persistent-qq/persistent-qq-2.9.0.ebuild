# Copyright 1999-2018 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=6

# ebuild generated by hackport 0.5.6.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Provides a quasi-quoter for raw SQL for persistent"
HOMEPAGE="https://github.com/yesodweb/persistent#readme"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="MIT"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="dev-haskell/haskell-src-meta:=[profile?]
	dev-haskell/mtl:=[profile?]
	>=dev-haskell/persistent-2.9:=[profile?]
	dev-haskell/text:=[profile?]
	>=dev-lang/ghc-7.8.2:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.18.1.3
"

src_prepare() {
	default

	cabal_chdeps \
		'persistent >=2.9.1' 'persistent >=2.9'
}
