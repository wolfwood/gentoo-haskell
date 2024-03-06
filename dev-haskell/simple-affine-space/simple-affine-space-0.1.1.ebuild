# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.6.7.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="A simple library for affine and vector spaces"
HOMEPAGE="https://www.haskell.org/haskellwiki/Yampa"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64"
IUSE="+test-doc-coverage +test-hlint"

RDEPEND=">=dev-lang/ghc-7.4.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.8
	test-hlint? ( test-doc-coverage? ( test? ( >=dev-haskell/hlint-1.7
							dev-haskell/regex-posix ) )
			!test-doc-coverage? ( test? ( >=dev-haskell/hlint-1.7 ) ) )
	!test-hlint? ( test? ( test-doc-coverage? ( dev-haskell/regex-posix ) ) )
"

RESTRICT=test # fails own tests

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag test-doc-coverage test-doc-coverage) \
		$(cabal_flag test-hlint test-hlint)
}
