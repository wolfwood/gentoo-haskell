# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

# ebuild generated by hackport 0.6.6.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Strict data types and String IO"
HOMEPAGE="https://github.com/haskell-strict/strict"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE="+assoc"

RDEPEND=">=dev-haskell/bifunctors-5.5.2:=[profile?] <dev-haskell/bifunctors-5.6:=[profile?]
	>=dev-haskell/hashable-1.2.7.0:=[profile?] <dev-haskell/hashable-1.4:=[profile?]
	>=dev-haskell/semigroups-0.18.5:=[profile?] <dev-haskell/semigroups-0.20:=[profile?]
	>=dev-haskell/text-1.2.3.0:=[profile?] <dev-haskell/text-1.3:=[profile?]
	>=dev-haskell/these-1.1.1.1:=[profile?] <dev-haskell/these-1.2:=[profile?]
	>=dev-haskell/transformers-compat-0.6.5:=[profile?] <dev-haskell/transformers-compat-0.7:=[profile?]
	>=dev-lang/ghc-7.8.2:=
	assoc? ( >=dev-haskell/assoc-1.0.1:=[profile?] <dev-haskell/assoc-1.1:=[profile?] )
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.18.1.3
"

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag assoc assoc)
}
