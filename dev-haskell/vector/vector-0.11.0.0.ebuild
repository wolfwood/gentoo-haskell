# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

# ebuild generated by hackport 0.4.6.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Efficient Arrays"
HOMEPAGE="https://github.com/haskell/vector"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~alpha ~amd64 ~ia64 ~ppc ~ppc64 ~sparc ~x86 ~x86-fbsd ~x86-freebsd ~amd64-linux ~x86-linux ~ppc-macos ~x86-macos ~x86-solaris"
IUSE="+boundschecks internalchecks unsafechecks"

RESTRICT=test # -O2 -g makes tests build hang

RDEPEND=">=dev-haskell/primitive-0.5.0.1:=[profile?] <dev-haskell/primitive-0.7:=[profile?]
	>=dev-lang/ghc-7.4.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.10
	test? ( >=dev-haskell/quickcheck-2.7
		dev-haskell/random
		dev-haskell/test-framework
		dev-haskell/test-framework-quickcheck2
		>=dev-haskell/transformers-0.2.0.0 )
"

src_prepare() {
	cabal_chdeps \
		"QuickCheck >=  2.7  && < 2.8" "QuickCheck >=  2.7" \
		'base >= 4.3 && < 4.9' 'base >= 4.3' \
		'ghc-prim >= 0.2 && < 0.5' 'ghc-prim >= 0.2'
}

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag boundschecks boundschecks) \
		$(cabal_flag internalchecks internalchecks) \
		$(cabal_flag unsafechecks unsafechecks)
}
