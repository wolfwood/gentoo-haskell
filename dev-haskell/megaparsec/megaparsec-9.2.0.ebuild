# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.7.1.1
#hackport: flags: -dev

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Monadic parser combinators"
HOMEPAGE="https://github.com/mrkkrp/megaparsec"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD-2"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"

RDEPEND=">=dev-haskell/case-insensitive-1.2:=[profile?] <dev-haskell/case-insensitive-1.3:=[profile?]
	>=dev-haskell/parser-combinators-1.0:=[profile?] <dev-haskell/parser-combinators-2.0:=[profile?]
	>=dev-haskell/scientific-0.3.7:=[profile?] <dev-haskell/scientific-0.4:=[profile?]
	>=dev-lang/ghc-8.8.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-3.0.0.0
"

src_configure() {
	haskell-cabal_src_configure \
		--flag=-dev
}
