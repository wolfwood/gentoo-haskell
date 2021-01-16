# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

# ebuild generated by hackport 0.6.7.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Beam driver for SQLite"
HOMEPAGE="https://haskell-beam.github.io/beam/user-guide/backends/beam-sqlite/"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="MIT"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"

RDEPEND=">=dev-haskell/aeson-0.11:=[profile?]
	>=dev-haskell/attoparsec-0.13:=[profile?] <dev-haskell/attoparsec-0.14:=[profile?]
	>=dev-haskell/beam-core-0.9:=[profile?] <dev-haskell/beam-core-0.10:=[profile?]
	>=dev-haskell/beam-migrate-0.5:=[profile?] <dev-haskell/beam-migrate-0.6:=[profile?]
	>=dev-haskell/dlist-0.8:=[profile?]
	>=dev-haskell/free-4.12:=[profile?] <dev-haskell/free-5.2:=[profile?]
	>=dev-haskell/hashable-1.2:=[profile?] <dev-haskell/hashable-1.4:=[profile?]
	>=dev-haskell/mtl-2.1:=[profile?] <dev-haskell/mtl-2.3:=[profile?]
	>=dev-haskell/network-uri-2.6:=[profile?] <dev-haskell/network-uri-2.7:=[profile?]
	>=dev-haskell/scientific-0.3:=[profile?] <dev-haskell/scientific-0.4:=[profile?]
	>=dev-haskell/sqlite-simple-0.4:=[profile?] <dev-haskell/sqlite-simple-0.5:=[profile?]
	>=dev-haskell/text-1.0:=[profile?] <dev-haskell/text-1.3:=[profile?]
	>=dev-lang/ghc-8.0.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.24.0.0
	test? ( dev-haskell/tasty
		dev-haskell/tasty-expected-failure
		dev-haskell/tasty-hunit )
"

src_prepare() {
	default
	cabal_chdeps\
		'aeson         >=0.11 && <1.5' 'aeson >=0.11'\
		'dlist         >=0.8  && <0.9' 'dlist >=0.8'
}
