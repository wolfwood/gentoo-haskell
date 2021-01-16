# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

# ebuild generated by hackport 0.6.7.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Connect to gargoyle-managed postgresql instances"
HOMEPAGE="https://hackage.haskell.org/package/gargoyle-postgresql-connect"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"

RDEPEND=">=dev-haskell/gargoyle-0.1.1.0:=[profile?] <dev-haskell/gargoyle-0.2:=[profile?]
	>=dev-haskell/gargoyle-postgresql-0.2.0.1:=[profile?]
	>=dev-haskell/gargoyle-postgresql-nix-0.3.0.0:=[profile?]
	>=dev-haskell/postgresql-simple-0.5:=[profile?]
	>=dev-haskell/resource-pool-0.2.3:=[profile?]
	>=dev-lang/ghc-8.6.3:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-2.4.0.1
"

src_prepare() {
	default
	cabal_chdeps\
		'gargoyle                 ==0.1.1' 'gargoyle >=0.1.1'\
		'gargoyle-postgresql      ==0.2'   'gargoyle-postgresql >=0.2'\
		'gargoyle-postgresql-nix  ==0.3'   'gargoyle-postgresql-nix >=0.3'
}
