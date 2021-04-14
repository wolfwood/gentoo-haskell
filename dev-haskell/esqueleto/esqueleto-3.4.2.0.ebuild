# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

# ebuild generated by hackport 0.6.7.9999
#hackport: flags: -mysql,-postgresql

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Type-safe EDSL for SQL queries on persistent backends"
HOMEPAGE="https://github.com/bitemyapp/esqueleto"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"

RESTRICT=test # tries to access network

RDEPEND=">=dev-haskell/aeson-1.0:=[profile?]
	>=dev-haskell/attoparsec-0.13:=[profile?] <dev-haskell/attoparsec-0.14:=[profile?]
	dev-haskell/blaze-html:=[profile?]
	>=dev-haskell/conduit-1.3:=[profile?]
	dev-haskell/monad-logger:=[profile?]
	>=dev-haskell/persistent-2.12:=[profile?] <dev-haskell/persistent-2.13:=[profile?]
	>=dev-haskell/resourcet-1.2:=[profile?]
	>=dev-haskell/tagged-0.2:=[profile?]
	>=dev-haskell/text-0.11:=[profile?] <dev-haskell/text-1.3:=[profile?]
	dev-haskell/unliftio:=[profile?]
	>=dev-haskell/unordered-containers-0.2:=[profile?]
	>=dev-lang/ghc-8.4.3:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-2.2.0.1
	test? ( dev-haskell/exceptions
		dev-haskell/hspec
		dev-haskell/mtl
		dev-haskell/mysql
		dev-haskell/mysql-simple
		dev-haskell/persistent-mysql
		dev-haskell/persistent-postgresql
		dev-haskell/persistent-sqlite
		dev-haskell/postgresql-libpq
		dev-haskell/postgresql-simple
		dev-haskell/vector )
"

src_configure() {
	haskell-cabal_src_configure \
		--flag=-mysql \
		--flag=-postgresql
}