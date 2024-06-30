# Copyright 1999-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.8.5.1

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Massiv (Массив) is an Array Library"
HOMEPAGE="https://github.com/lehins/massiv"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64"
IUSE="unsafe-checks"

RDEPEND=">=dev-haskell/primitive-0.7.1.0:=[profile?]
	>=dev-haskell/random-1.2.0:=[profile?]
	>=dev-haskell/scheduler-2.0.0:=[profile?] <dev-haskell/scheduler-3:=[profile?]
	dev-haskell/unliftio-core:=[profile?]
	>=dev-haskell/vector-0.12:=[profile?]
	dev-haskell/vector-stream:=[profile?]
	>=dev-lang/ghc-9.0.2:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-3.4.1.0
	test? ( >=dev-haskell/doctest-0.15 )
"

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag unsafe-checks unsafe-checks)
}