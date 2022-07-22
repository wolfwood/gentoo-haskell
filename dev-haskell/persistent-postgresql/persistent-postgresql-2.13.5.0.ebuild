# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.7.1.2.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Backend for the persistent library using postgresql"
HOMEPAGE="https://www.yesodweb.com/book/persistent"

LICENSE="MIT"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"

RESTRICT="test" # requires network/postgresql

RDEPEND=">=dev-haskell/aeson-1.0:=[profile?]
	dev-haskell/attoparsec:=[profile?]
	dev-haskell/blaze-builder:=[profile?]
	>=dev-haskell/conduit-1.2.12:=[profile?]
	>=dev-haskell/monad-logger-0.3.25:=[profile?]
	>=dev-haskell/persistent-2.13.3:=[profile?] <dev-haskell/persistent-3:=[profile?]
	>=dev-haskell/postgresql-libpq-0.9.4.2:=[profile?] <dev-haskell/postgresql-libpq-0.10:=[profile?]
	>=dev-haskell/postgresql-simple-0.6.1:=[profile?] <dev-haskell/postgresql-simple-0.7:=[profile?]
	dev-haskell/resource-pool:=[profile?]
	>=dev-haskell/resourcet-1.1.9:=[profile?]
	dev-haskell/string-conversions:=[profile?]
	dev-haskell/unliftio-core:=[profile?]
	dev-haskell/vault:=[profile?]
	>=dev-lang/ghc-8.4.3:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-2.2.0.1
	test? ( dev-haskell/fast-logger
		>=dev-haskell/hspec-2.4
		dev-haskell/hspec-expectations
		dev-haskell/hspec-expectations-lifted
		dev-haskell/http-api-data
		dev-haskell/hunit
		dev-haskell/path-pieces
		dev-haskell/persistent-qq
		dev-haskell/persistent-test
		dev-haskell/quickcheck
		dev-haskell/quickcheck-instances
		dev-haskell/unliftio
		dev-haskell/unordered-containers
		dev-haskell/vector )
"
