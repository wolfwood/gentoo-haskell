# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

# ebuild generated by hackport 0.6.7.9999

# The tests fail, either due to a sandbox issue or because they depend on
# postgreqsl-13 specifically
CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal
RESTRICT="test"

DESCRIPTION="Connection layer between beam and postgres"
HOMEPAGE="https://haskell-beam.github.io/beam/user-guide/backends/beam-postgres"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="MIT"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"

RDEPEND=">=dev-haskell/aeson-0.11:=[profile?]
	>=dev-haskell/attoparsec-0.13:=[profile?] <dev-haskell/attoparsec-0.14:=[profile?]
	>=dev-haskell/beam-core-0.9:=[profile?] <dev-haskell/beam-core-0.10:=[profile?]
	>=dev-haskell/beam-migrate-0.5:=[profile?] <dev-haskell/beam-migrate-0.6:=[profile?]
	>=dev-haskell/case-insensitive-1.2:=[profile?] <dev-haskell/case-insensitive-1.3:=[profile?]
	>=dev-haskell/conduit-1.2:=[profile?] <dev-haskell/conduit-1.4:=[profile?]
	>=dev-haskell/free-4.12:=[profile?] <dev-haskell/free-5.2:=[profile?]
	>=dev-haskell/hashable-1.1:=[profile?] <dev-haskell/hashable-1.4:=[profile?]
	>=dev-haskell/haskell-src-exts-1.18:=[profile?] <dev-haskell/haskell-src-exts-1.24:=[profile?]
	>=dev-haskell/lifted-base-0.2:=[profile?] <dev-haskell/lifted-base-0.3:=[profile?]
	>=dev-haskell/monad-control-1.0:=[profile?] <dev-haskell/monad-control-1.1:=[profile?]
	>=dev-haskell/mtl-2.1:=[profile?] <dev-haskell/mtl-2.3:=[profile?]
	>=dev-haskell/network-uri-2.6:=[profile?] <dev-haskell/network-uri-2.7:=[profile?]
	>=dev-haskell/postgresql-libpq-0.8:=[profile?] <dev-haskell/postgresql-libpq-0.10:=[profile?]
	>=dev-haskell/postgresql-simple-0.5:=[profile?] <dev-haskell/postgresql-simple-0.7:=[profile?]
	>=dev-haskell/scientific-0.3:=[profile?] <dev-haskell/scientific-0.4:=[profile?]
	>=dev-haskell/tagged-0.8:=[profile?] <dev-haskell/tagged-0.9:=[profile?]
	>=dev-haskell/text-1.0:=[profile?] <dev-haskell/text-1.3:=[profile?]
	>=dev-haskell/unordered-containers-0.2:=[profile?] <dev-haskell/unordered-containers-0.3:=[profile?]
	>=dev-haskell/uuid-types-1.0:=[profile?] <dev-haskell/uuid-types-1.1:=[profile?]
	>=dev-haskell/vector-0.11:=[profile?] <dev-haskell/vector-0.13:=[profile?]
	>=dev-lang/ghc-8.0.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.24.0.0"
#	test? ( dev-haskell/hedgehog
#		dev-haskell/tasty
#		dev-haskell/tasty-hunit
#		dev-haskell/tmp-postgres
#		dev-haskell/uuid )

src_prepare() {
	default
	cabal_chdeps\
		'aeson                >=0.11 && <1.5' 'aeson >=0.11'
}
