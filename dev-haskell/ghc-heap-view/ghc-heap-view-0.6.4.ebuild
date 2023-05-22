# Copyright 1999-2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.8.2.0.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Extract the heap representation of Haskell values and thunks"
HOMEPAGE="https://hackage.haskell.org/package/ghc-heap-view"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64"
IUSE="prim-supports-any"

RDEPEND=">=dev-lang/ghc-8.10.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-3.2.0.0 <dev-haskell/cabal-3.9
"

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag prim-supports-any prim-supports-any)
}