# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.5.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Like Data.Dynamic/Data.Typeable but with support for rank-1 polymorphic types"
HOMEPAGE="http://haskell-distributed.github.com"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64"
IUSE=""

RDEPEND=">=dev-haskell/binary-0.5:=[profile?] <dev-haskell/binary-0.9:=[profile?]
	>=dev-lang/ghc-7.4.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.8
	test? ( >=dev-haskell/hunit-1.2
		>=dev-haskell/test-framework-0.6 <dev-haskell/test-framework-0.9
		>=dev-haskell/test-framework-hunit-0.2.0 <dev-haskell/test-framework-hunit-0.4 )
"

src_prepare() {
	default

	cabal_chdeps \
		'HUnit >= 1.2 && < 1.4' 'HUnit >= 1.2'
}
